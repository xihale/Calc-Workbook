import re
import os

def fix_math_spacing(text):
    # Remove leading/trailing space inside $...$
    return re.sub(r'\$\s*(.*?)\s*\$', r'$\1$', text)

def process_content(content):
    # More flexible regex for #question blocks
    # #question followed by optional whitespace, then (, then optional whitespace, then [
    # Then body, then ], then optional whitespace, then optional comma, then a: ...
    # And finally )
    pattern = re.compile(r'(#question\s*\(\s*\[\s*)(.*?)(\s*\]\s*,\s*a:\s*.*?\s*\))', re.DOTALL)
    
    def replacer(match):
        prefix = match.group(1)
        body = match.group(2)
        suffix = match.group(3)
        
        # Split body into lines
        lines = body.split('\n')
        
        # Identify lines containing A., B., C., D.
        choice_regex = {
            'A': re.compile(r'^\s*A\.\s*(.*)$'),
            'B': re.compile(r'^\s*B\.\s*(.*)$'),
            'C': re.compile(r'^\s*C\.\s*(.*)$'),
            'D': re.compile(r'^\s*D\.\s*(.*)$')
        }
        
        choices = {}
        choice_line_indices = []
        
        for i, line in enumerate(lines):
            for label, regex in choice_regex.items():
                m = regex.match(line)
                if m:
                    choices[label] = m.group(1).strip()
                    choice_line_indices.append(i)
                    break
        
        if len(choices) == 4 and len(set(choice_line_indices)) == 4:
            choice_line_indices.sort()
            
            labels_in_order = []
            for idx in choice_line_indices:
                line = lines[idx]
                for label, regex in choice_regex.items():
                    if regex.match(line):
                        labels_in_order.append(label)
                        break
            
            if labels_in_order == ['A', 'B', 'C', 'D']:
                first_choice_idx = choice_line_indices[0]
                q_text_lines = lines[:first_choice_idx]
                
                while q_text_lines and not q_text_lines[-1].strip():
                    q_text_lines.pop()
                
                for k in choices:
                    choices[k] = fix_math_spacing(choices[k])
                
                total_content_len = sum(len(choices[k]) for k in choices)
                if total_content_len < 60:
                    joined = f"A. {choices['A']} #quad B. {choices['B']} #quad C. {choices['C']} #quad D. {choices['D']}"
                else:
                    joined = f"A. {choices['A']} #quad B. {choices['B']} \\\nC. {choices['C']} #quad D. {choices['D']}"
                
                new_body = '\n'.join(q_text_lines) + '\n' + joined
                return prefix + new_body + suffix
        
        # Handle cases where they might be already on one or two lines but need formatting
        # Search for the first choice marker
        a_line_idx = -1
        for i, line in enumerate(lines):
            if re.search(r'^\s*A\.', line):
                a_line_idx = i
                break
        
        if a_line_idx != -1:
            q_text_lines = lines[:a_line_idx]
            while q_text_lines and not q_text_lines[-1].strip():
                q_text_lines.pop()
            
            processed_choice_lines = []
            for line in lines[a_line_idx:]:
                if line.strip():
                    processed_choice_lines.append(fix_math_spacing(line.strip()))
            
            new_body = '\n'.join(q_text_lines) + '\n' + '\n'.join(processed_choice_lines)
            return prefix + new_body + suffix

        return match.group(0)

    return pattern.sub(replacer, content)

def main():
    chapters_dir = '/home/xihale/Desktop/learning/typst/高数下/x/chapters/'
    for filename in os.listdir(chapters_dir):
        if filename.startswith('chapter-') and filename.endswith('.typ'):
            filepath = os.path.join(chapters_dir, filename)
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
            
            new_content = process_content(content)
            
            if new_content != content:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                print(f"Updated {filename}")
            else:
                print(f"No changes for {filename}")

if __name__ == "__main__":
    main()
