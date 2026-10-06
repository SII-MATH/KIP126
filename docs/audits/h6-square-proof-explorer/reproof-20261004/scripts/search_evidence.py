"""Capture current Lean declarations and their lexical context, never infer truth."""
import hashlib
import json
import pathlib
import re
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[5]
OUT = pathlib.Path(__file__).resolve().parents[1]
DECL = re.compile(r'^(?:(?:noncomputable|private|protected)\s+)*(def|abbrev|structure|theorem|lemma|axiom|class)\s+(\S+)')

def capture(path, name, fqn=None, mapping='', occurrence=None):
    lines=(ROOT/path).read_text().splitlines()
    found=[]
    for i,line in enumerate(lines):
        m=DECL.match(line)
        if m and m.group(2).rstrip(':')==name:
            found.append((i,m.group(1)))
    if occurrence is not None:
        found=[found[occurrence]]
    if len(found)!=1:
        raise ValueError((path,name,found))
    start,kind=found[0]
    end=len(lines)
    for i in range(start+1,len(lines)):
        if DECL.match(lines[i]) or re.match(r'^(?:end|namespace|section|variable)\b',lines[i]):
            end=i
            break
    # Remove the next declaration's doc comment from the preceding block.
    block='\n'.join(lines[start:end]).rstrip()
    comment=block.rfind('\n/--')
    if comment!=-1 and block[comment:].count('/--')==block[comment:].count('-/'):
        block=block[:comment].rstrip()
    namespace=[]
    context=[]
    # Preserve the complete prefix as evidence: includes imports, universes,
    # variables, section boundaries and any preceding type abbreviations.
    prefix='\n'.join(lines[:start])
    return {'name':fqn or name,'path':path,'line':start+1,'kind':kind,
            'commit':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),
            'source_sha256':hashlib.sha256((ROOT/path).read_bytes()).hexdigest(),
            'full_type_and_definition':block,'context':prefix,
            'initial_mapping':mapping}

def write_round(number, entries):
    path=OUT/'data'/f'search-round{number}.json'
    old=json.loads(path.read_text()) if path.exists() else []
    keyed={x['dependency_id']:x for x in old}
    keyed.update({x['dependency_id']:x for x in entries})
    path.write_text(json.dumps(list(keyed.values()),ensure_ascii=False,indent=2)+'\n')

if __name__=='__main__':
    print(ROOT)
