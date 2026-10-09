"""Check active Lean source tokens; kernel axiom audits remain authoritative."""
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
excluded = {'.lake', 'upstream', 'tools', 'build-tools', 'SSeqCpp-build-source',
            'cmake-tool', 'cpp-build', 'build', '__pycache__'}

def code_only(text):
    result = []
    i, depth = 0, 0
    while i < len(text):
        pair = text[i:i+2]
        if depth:
            if pair == '/-':
                depth += 1
                i += 2
            elif pair == '-/':
                depth -= 1
                i += 2
            else:
                result.append('\n' if text[i] == '\n' else ' ')
                i += 1
        elif pair == '/-':
            depth = 1
            i += 2
        elif pair == '--':
            end = text.find('\n', i)
            i = len(text) if end < 0 else end
        elif text[i] == '"':
            result.append(' ')
            i += 1
            while i < len(text):
                if text[i] == '\\':
                    i += 2
                elif text[i] == '"':
                    i += 1
                    break
                else:
                    result.append('\n' if text[i] == '\n' else ' ')
                    i += 1
        else:
            result.append(text[i])
            i += 1
    return ''.join(result)

files, flags = 0, []
for directory, dirs, names in root.walk():
    dirs[:] = [d for d in dirs if d not in excluded and not d.startswith('kernel-audit')]
    for name in names:
        if not name.endswith('.lean'):
            continue
        path = directory / name
        source = code_only(path.read_text())
        files += 1
        for match in re.finditer(r'\b(?:sorry|sorryAx|admit|axiom|native_decide)\b', source):
            flags.append(dict(file=str(path.relative_to(root)),
                              line=source[:match.start()].count('\n')+1,
                              token=match.group()))
record = dict(files=files, flags=flags,
    meaning='Source token scan excluding nested comments, strings, vendored files and generated audit queries. Complements exhaustive kernel declaration audit; not compilation evidence.')
(root / 'tests/current-source-scan.json').write_text(json.dumps(record, indent=2)+'\n')
assert not flags, flags
print(f'PASS: {files} active Lean sources; no forbidden proof tokens')
