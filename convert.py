import re
import os

with open('book.md', 'r', encoding='utf-8') as f:
    lines = f.readlines()

content_lines = []
answer_lines = []
in_answers = False

for line in lines:
    if line.strip() == '# 参考答案与提示':
        in_answers = True
    if in_answers:
        answer_lines.append(line)
    else:
        content_lines.append(line)

# --- Helper to normalize titles for matching ---
def norm(t):
    if not t: return ""
    t = t.replace(' ', '').replace('　', '')
    t = t.replace('（', '(').replace('）', ')')
    # Basic mapping for section numbers
    t = t.replace('一', '1').replace('二', '2').replace('三', '3').replace('四', '4').replace('五', '5').replace('六', '6')
    return t.lower()

answers = {} 
current_chapter = None
current_section = None

# Extract answers
ans_regex = re.compile(r'(\d+)\.(.*?)(?=\s+\d+\.|$)', re.DOTALL)

for line in answer_lines:
    line = line.strip()
    if not line:
        continue
    if line.startswith('# 第') and '章' in line:
        current_chapter = norm(line.replace('#', '').strip())
        answers[current_chapter] = {}
        continue
    if line.startswith('# 第') and '节' in line:
        current_section = norm(line.replace('#', '').strip())
        if current_chapter and current_section not in answers[current_chapter]:
            answers[current_chapter][current_section] = {}
        continue
    if line.startswith('总习题') or line.startswith('# 总习题'):
        current_section = norm(line.replace('#', '').strip())
        if current_chapter and current_section not in answers[current_chapter]:
            answers[current_chapter][current_section] = {}
        continue

    line = re.sub(r'^[一二三四五六七八九十]+、', '', line).strip()
    
    if current_chapter and current_section:
        # Standardize current_section for consistency
        matches = ans_regex.findall(line)
        if matches:
            for m in matches:
                q_num = m[0]
                q_ans = m[1].strip()
                answers[current_chapter][current_section][q_num] = q_ans
        else:
            if answers[current_chapter][current_section]:
                last_q = list(answers[current_chapter][current_section].keys())[-1]
                answers[current_chapter][current_section][last_q] += '\n' + line

# Extract questions and write to typst files
os.makedirs('chapters', exist_ok=True)
main_all_typ = open('chapters/all.typ', 'w', encoding='utf-8')

current_chapter = None
current_section = None
current_prob_type = None

file_out = None
chapter_idx = 7

# Now explicitly checking for matching question start in the loop rather than a compiled regex.
q_acc = []
last_q_num = None

def fix_math(text):
    # Convert LaTeX inline math to Typst $...$
    text = re.sub(r'\\\(\s*', '$', text)
    text = re.sub(r'\s*\\\)', '$', text)
    # Handle escaped braces
    text = text.replace(r'\{', '{').replace(r'\}', '}')
    
    # In Typst math, // is not parallel. Use || or parallel.
    # We'll do this replacement later inside escape_typst math blocks.
    
    return text.strip()

def escape_typst(text):
    # 1. First fix general math syntax (LaTeX to Typst $)
    text = fix_math(text)
    
    # Ensure math delimiters are balanced in this chunk to prevent leakage
    if text.count('$') % 2 != 0:
        text += '$'
    
    # 2. Split by $ to handle text and math differently
    parts = text.split('$')
    new_parts = []
    
    # 2.1 Define keywords to protect in math mode (Typst built-ins)
    KEYWORDS = {
        'bold', 'arrow', 'op', 'underline', 'perp', 'times', 'dot', 
        'alpha', 'beta', 'gamma', 'delta', 'epsilon', 'zeta', 'eta', 'theta', 'iota', 'kappa', 'lambda', 'mu', 'nu', 'xi', 'omicron', 'pi', 'rho', 'sigma', 'tau', 'upsilon', 'phi', 'chi', 'psi', 'omega',
        'Delta', 'Gamma', 'Theta', 'Lambda', 'Xi', 'Pi', 'Sigma', 'Phi', 'Psi', 'Omega',
        'plus', 'minus', 'oo', 'partial', 'nabla', 'cos', 'sin', 'tan', 'ln', 'log', 'exp', 
        'sqrt', 'angle', 'in', 'forall', 'exists', 'limit', 'lim', 'det', 'text', 'cases',
        'sum', 'product', 'integral', 'integral.double', 'integral.triple', 'integral.cont', 'diff',
        'quad', 'dots', 'plus.minus', 'parallel', 'perp', 'approx', 'mat', 'vec', 'hash'
    }

    for i, part in enumerate(parts):
        if i % 2 == 0:
            # TEXT BLOCK
            t = part
            t = t.replace('#', r'\#')
            t = t.replace('_', r'\_')
            t = t.replace('<', r'\<').replace('>', r'\>')
            t = t.replace('[', r'\[').replace(']', r'\]')
            if t.count('*') % 2 != 0:
                t = t.replace('*', r'\*')
            new_parts.append(t)
        else:
            # MATH BLOCK
            m = part
            
            # 0. Pre-process environments
            m = m.replace(r'\begin{cases}', ' cases( ').replace(r'\end{cases}', ' ) ')
            m = m.replace(r'\begin{matrix}', ' mat( ').replace(r'\end{matrix}', ' ) ')
            m = m.replace(r'\begin{pmatrix}', ' mat(delim: "(", ').replace(r'\end{pmatrix}', ' ) ')
            m = m.replace(r'\begin{bmatrix}', ' mat(delim: "[", ').replace(r'\end{bmatrix}', ' ) ')
            
            # 0.1 Pre-process limits and arrows
            m = m.replace(r'\lim', ' lim ')
            m = m.replace(r'\sum', ' sum ')
            m = m.replace(r'\to', ' arrow ')
            m = m.replace(r'\rightarrow', ' arrow ')
            m = m.replace(r'\infty', ' oo ')
            
            # 1. Substitute {} with () for Typst math groupings
            m = m.replace(r'\{', ' __LBRACE__ ').replace(r'\}', ' __RBRACE__ ')
            m = m.replace('{', '(').replace('}', ')')
            m = m.replace('__LBRACE__', r'\{').replace('__RBRACE__', r'\}')
            
            # 2. LaTeX commands to Typst functions
            m = m.replace(r'\pmb', r'\bold')
            m = m.replace(r'\mathbf', r'\bold')
            m = m.replace(r'\overrightarrow', r'\arrow')
            m = m.replace(r'\vec', r' vec ')
            m = m.replace(r'\operatorname', r' op ')
            
            # 3. Handle commands with arguments: \cmd(arg)
            cmds = ['bold', 'arrow', 'op', 'underline', 'operatorname', 'vec']
            m = re.sub(r'\\operatorname\s*\*?', r'\\operatorname', m)
            for cmd in cmds:
                def sub_cmd(match):
                    c = match.group(1)
                    if c == 'operatorname': c = 'op'
                    arg = match.group(2)
                    return f' {c}({arg}) '
                m = re.sub(r'\\(' + cmd + r')\s*\(([^\(\)]*)\)', sub_cmd, m)
                if cmd != 'operatorname':
                    m = re.sub(r'\\(' + cmd + r')\s+([a-zA-Z0-9])', r' \1(\2) ', m)

            # 4. \frac(a)(b) -> (a)/(b)
            for _ in range(3):
                m = re.sub(r'\\frac\s*\(((?:[^\(\)]|\([^\(\)]*\))*)\)\s*\(((?:[^\(\)]|\([^\(\)]*\))*)\)', r'((\1)/(\2))', m)
            
            # 5. \left / \right
            m = m.replace(r'\left(', '(').replace(r'\right)', ')')
            m = m.replace(r'\left[', '[').replace(r'\right]', ']')
            m = m.replace(r'\left\{', r'\{').replace(r'\right\}', r'\}')
            m = m.replace(r'\left|', '|').replace(r'\right|', '|')
            m = m.replace(r'\left', '').replace(r'\right', '')
            
            # 6. Symbols mapping
            symbols = {
                r'\perp': ' perp ', r'\times': ' times ', r'\cdot': ' dot ',
                r'\alpha': ' alpha ', r'\beta': ' beta ', r'\gamma': ' gamma ',
                r'\delta': ' delta ', r'\epsilon': ' epsilon ', r'\zeta': ' zeta ',
                r'\eta': ' eta ', r'\theta': ' theta ', r'\iota': ' iota ',
                r'\kappa': ' kappa ', r'\lambda': ' lambda ', r'\mu': ' mu ',
                r'\nu': ' nu ', r'\xi': ' xi ', r'\pi': ' pi ', r'\rho': ' rho ',
                r'\sigma': ' sigma ', r'\tau': ' tau ', r'\phi': ' phi ',
                r'\chi': ' chi ', r'\psi': ' psi ', r'\omega': ' omega ',
                r'\Delta': ' Delta ', r'\Gamma': ' Gamma ', r'\Theta': ' Theta ',
                r'\Lambda': ' Lambda ', r'\Xi': ' Xi ', r'\Pi': ' Pi ',
                r'\Sigma': ' Sigma ', r'\Phi': ' Phi ', r'\Psi': ' Psi ',
                r'\Omega': ' Omega ', r'\pm': ' plus.minus ', r'\partial': ' partial ', 
                r'\nabla': ' nabla ', r'\cos': ' cos ', r'\sin': ' sin ', 
                r'\tan': ' tan ', r'\ln': ' ln ', r'\log': ' log ', 
                r'\exp': ' exp ', r'\sqrt': ' sqrt ', r'\ldots': ' ... ', 
                r'\cdots': ' ... ', r'\quad': ' "    " ', r'\triangle': ' Delta ', 
                r'\angle': ' angle ', r'\in': ' in ', r'\forall': ' forall ', 
                r'\exists': ' exists ', r'\int': ' integral ',
                r'\iint': ' integral.double ', r'\iiint': ' integral.triple ', 
                r'\oint': ' integral.cont ', r'\parallel': ' parallel ',
                r'\approx': ' approx ', r'\neq': ' != ', r'\le': ' <= ', r'\ge': ' >= ',
                r'\leq': ' <= ', r'\geq': ' >= ', r'\mid': ' | ',
                r'\leqslant': ' <= ', r'\geqslant': ' >= ', r'\equiv': ' ident '
            }
            # Sort symbols by length descending to avoid prefix matching issues (e.g., \ge vs \geqslant)
            sorted_symbols = sorted(symbols.items(), key=lambda x: len(x[0]), reverse=True)
            for tex, typ in sorted_symbols:
                m = m.replace(tex, typ)
            
            m = m.replace('/ /', ' || ').replace('//', ' || ')
            
            # 7. Final backslash cleanup
            m = re.sub(r'\\[a-zA-Z]+', ' ', m)
            
            # 8. Chinese characters in math mode
            def wrap_chinese(match):
                return f' text("{match.group(0)}") '
            m = re.sub(r'[\u4e00-\u9fff]+', wrap_chinese, m)
            
            # 9. Cleanup redundant parentheses: ((expr)) -> (expr)
            while '((' in m and '))' in m:
                new_m = re.sub(r'\(\(([^()]*)\)\)', r'(\1)', m)
                if new_m == m: break
                m = new_m

            # 10. Tokenization
            tokens = re.findall(r'[a-zA-Z0-9.]+|[^a-zA-Z0-9.\s]|\s+', m)
            processed_tokens = []
            for token in tokens:
                t_strip = token.strip()
                if not t_strip:
                    processed_tokens.append(token)
                    continue
                if t_strip.lower() in KEYWORDS or t_strip.isdigit() or len(t_strip) == 1 or (t_strip.startswith('"') and t_strip.endswith('"')):
                    processed_tokens.append(token)
                elif re.match(r'^[a-zA-Z0-9.]+$', t_strip):
                    if t_strip.isupper() and len(t_strip) <= 3:
                        processed_tokens.append(f'"{t_strip}"')
                    else:
                        spaced = re.sub(r'([a-zA-Z0-9])', r'\1 ', t_strip).strip()
                        processed_tokens.append(spaced)
                else:
                    processed_tokens.append(token)
            m = "".join(processed_tokens)
            
            # 11. Final refinements
            m = m.replace(' _', '_').replace(' ^', '^')
            m = m.replace('(cases)', ' cases ')
            m = re.sub(r'\s+', ' ', m).strip()
            new_parts.append(m)
            
    # Reassemble: $math$ for inline, $ math $ for display
    res = ""
    for i, p in enumerate(new_parts):
        if i % 2 != 0:
            if 'cases' in p or 'mat' in p or len(p) > 100 or '\\\\' in p:
                res += f"$ {p} $"
            else:
                res += f"${p}$"
        else:
            res += p
    return res.strip()

def flush_question():
    global q_acc, last_q_num, file_out, current_chapter, current_section
    if not q_acc or not last_q_num or not file_out:
        return
    q_str = "\n".join(q_acc).strip()
    q_str = fix_math(q_str)
    
    # lookup answer
    ans_str = "none"
    n_ch = norm(current_chapter)
    n_sec = norm(current_section)
    if n_ch in answers and n_sec in answers[n_ch]:
        if str(last_q_num) in answers[n_ch][n_sec]:
            raw_ans = answers[n_ch][n_sec][str(last_q_num)]
            ans_str = f"[{escape_typst(raw_ans)}]"
    
    q_typst = f'#question([\n  {last_q_num}. {escape_typst(q_str)}\n], a: {ans_str})\n\n'
    file_out.write(q_typst)
    q_acc = []
    last_q_num = None

for line in content_lines:
    sline = line.strip()
    
    if sline.startswith('# 第') and '章' in sline:
        flush_question()
        chapter_idx += 1
        current_chapter = sline.replace('#', '').strip()
        current_section = None
        if file_out:
            file_out.close()
        ch_file = f'chapter-{chapter_idx:02d}.typ'
        file_out = open(f'chapters/{ch_file}', 'w', encoding='utf-8')
        file_out.write(f'#import "../template.typ": *\n\n')
        file_out.write(f'= {current_chapter}\n\n')
        main_all_typ.write(f'#include "{ch_file}"\n')
        continue
        
    if sline.startswith('# 第') and '节' in sline:
        flush_question()
        current_section = sline.replace('#', '').strip()
        # Clean section titles too!
        current_section = current_section.replace('*', '')
        if file_out:
            file_out.write(f'== {current_section}\n\n')
        continue

    if sline.startswith('总习题') or sline.startswith('# 总习题'):
        flush_question()
        current_section = sline.replace('#', '').strip()
        if file_out:
            file_out.write(f'== {current_section}\n\n')
        continue

    # Skip some explicit exact lines
    if sline in ['年级（或队别）：', '学号：', '姓名：', '高等数学习题册（下册）', '高等数学习题册（下册）GAODENGSHUXUEXITICE'] or re.match(r'^·?\d+·?$', sline) or sline.startswith('---'):
        continue

    if sline.startswith('# 高等数学('):
        flush_question()
        # break  # DO NOT BREAK, IT KILLED THE ENTIRE PROCESSING
        
    if sline.startswith('# 一、') or sline.startswith('# 二、') or sline.startswith('# 三、') or sline.startswith('# 四、') or sline.startswith('# 五、'):
        flush_question()
        prob_type = sline.replace('#', '').strip()
        if file_out:
            file_out.write(f'#prob-type("{prob_type}")\n\n')
        continue
    
    # Matching question start manually by checking if start is digit followed by dot
    m = re.match(r'^(\d+)\.(.*)', sline)
    if m:
        flush_question()
        last_q_num = m.group(1)
        q_acc.append(m.group(2))
    elif sline and sline.split('.')[0].isdigit() and len(sline.split('.')[0]) < 4:
        # Fallback question detection if regex strangely fails
        flush_question()
        last_q_num = sline.split('.')[0]
        q_acc.append(sline[len(last_q_num)+1:])
    elif last_q_num is not None:
        q_acc.append(line)
    elif file_out and sline and not sline.startswith('#'):
        if '本书是根据' not in sline and '目录' not in sline and '前言' not in sline and '图书在版编目(CIP)数据' not in sline:
            # Maybe just general text, output as is
            pass

flush_question()
if file_out:
    file_out.close()
main_all_typ.close()
print("Typst conversion completed.")
