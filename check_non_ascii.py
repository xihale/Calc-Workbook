import os
import re

def check_files():
    for root, dirs, files in os.walk('.'):
        for file in files:
            if file.endswith('.typ'):
                path = os.path.join(root, file)
                with open(path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    for i, char in enumerate(content):
                        if ord(char) > 127:
                            # Print unique non-ASCII chars in math blocks
                            pass
                    
                    # Find math blocks
                    matches = re.findall(r'\$.*?\$', content, re.DOTALL)
                    non_ascii_in_math = set()
                    for match in matches:
                        for char in match:
                            if ord(char) > 127:
                                non_ascii_in_math.add(char)
                    
                    if non_ascii_in_math:
                        print(f"Non-ASCII in math blocks in {path}: {''.join(sorted(non_ascii_in_math))}")

if __name__ == '__main__':
    check_files()
