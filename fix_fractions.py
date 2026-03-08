import re
import os

def fix_math_fractions(content):
    def replace_math(match):
        math = match.group(0)
        
        # Helper to wrap complex denominators in parentheses
        # If the denominator already has parentheses, don't add more.
        
        # Rule 1: / sqrt(...) -> / (sqrt(...))
        # Rule 1: / root(...) -> / (root(...))
        # Note: we should only wrap if NOT already wrapped. 
        # But (sqrt(...)) matches our pattern. 
        # So check if it's already preceded by '(' and followed by ')'
        
        # Let's find all '/'
        parts = re.split(r'/', math)
        if len(parts) <= 1:
            return math
        
        new_math = parts[0]
        for i in range(1, len(parts)):
            prev_part = new_math
            curr_part = parts[i]
            
            # Check if current part starts with something that needs wrapping
            # We need to find the "denominator" which is the first "term" in curr_part
            
            # This is complex in regex. Let's use a simpler approach for common cases
            pass

        # Let's use systematic regex replacements instead
        
        # 1. / sqrt(...)
        # We want to avoid matching if it's already wrapped: /(sqrt(...))
        # Negative lookbehind for '(' and lookahead for ')' is tricky here because of whitespace
        
        # A safer way is to match the whole thing and check if it's already wrapped
        
        # Rule: denominator is sqrt(...)
        # Pattern: / \s* sqrt \s* \( ... \)
        # Ensure it's not ( / \s* (sqrt(...)) )
        
        def wrap_if_needed(m):
            prefix = m.group(1) # should be '/'
            den = m.group(2)
            # Check if den is already wrapped. 
            # This is hard because the regex matched 'sqrt(...)'
            # But the 'sqrt(...)' itself might be inside parens in the original string.
            
            # Actually, if we just wrap it, Typst will handle ((sqrt(...))) fine, 
            # but it's not "surgical".
            
            # Let's look at the character BEFORE the match in the original math string.
            start_index = m.start()
            if start_index > 0 and math[start_index-1] == '(' and math[m.end()] == ')':
                return m.group(0) # already wrapped
            
            return f"/({den})"

        # Denominators starting with sqrt, root, |, bold
        # We need to handle balanced parentheses for sqrt/root/bold
        
        # Use a more sophisticated regex for the denominator
        # Denominator can be:
        # - sqrt(...)
        # - root(...)
        # - |...|
        # - bold(...)
        
        # Pattern for balanced parentheses: ([^()]*(\([^()]*\)[^()]*)*) - only 1 level
        # Let's just use a simpler one and hope no deep nesting in denominators
        
        # Denominator: sqrt(...)
        math = re.sub(r'/\s*(sqrt\s*\([^)]+\))', r'/(\1)', math)
        # Denominator: root(...)
        math = re.sub(r'/\s*(root\s*\([^)]+\))', r'/(\1)', math)
        # Denominator: bold(...)
        math = re.sub(r'/\s*(bold\s*\([^)]+\))', r'/(\1)', math)
        # Denominator: |...|
        math = re.sub(r'/\s*(\|[^|]+\|)', r'/(\1)', math)
        
        # Handle a/b/c -> (a/b)/c or a/(b/c)
        # Typst default is a/b/c => (a/b)/c.
        # The user says "as appropriate for the math context".
        # This is hard to automate. I will leave multiple slashes for manual check or
        # just wrap the first one if it makes sense.
        # Actually, let's look for cases in the files.
        
        # Fix double wrapping if we introduced it: /((...)) -> /(...)
        math = re.sub(r'/\(\((sqrt|root|bold|\|)(.*?)\)\)', r'/(\1\2)', math)

        return math

    return re.sub(r'\$.*?\$', replace_math, content, flags=re.DOTALL)

def process_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    new_content = fix_math_fractions(content)
    
    if new_content != content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"Fixed {file_path}")
    else:
        print(f"No changes in {file_path}")

chapters_dir = '/home/xihale/Desktop/learning/typst/高数下/x/chapters/'
for filename in sorted(os.listdir(chapters_dir)):
    if filename.startswith('chapter-') and filename.endswith('.typ'):
        process_file(os.path.join(chapters_dir, filename))
