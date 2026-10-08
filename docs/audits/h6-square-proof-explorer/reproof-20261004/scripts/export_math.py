#!/usr/bin/env python3
"""Render the approved mathematics to reader-facing Markdown without audit IDs."""
from pathlib import Path
import json,re,hashlib
P=Path(__file__).resolve().parents[1]
m=json.loads((P/'data/math.json').read_text());deps=json.loads((P/'data/dependencies.json').read_text());nums={d['id']:d['number'] for d in deps}
def render(t):return re.sub(r'\[\[(EXT-\d+)\]\]',lambda x:'['+str(nums[x[1]])+']',t)
lines=['# '+m['title']];source=[];output=[]
def block(b,level):
 lines.append('#'*level+' '+b['title'])
 for paragraph in b['paragraphs']:
  assert isinstance(paragraph,str)
  value=render(paragraph);lines.append(value);source.append(paragraph);output.append(value)
block(m['target'],2);block(m['notation'],2)
for chapter in m['chapters']:
 lines.append('## '+chapter['title'])
 for step in chapter['steps']:block(step,3)
block(m['conclusion'],2)
text='\n\n'.join(lines)+'\n';(P/'proof.zh.md').write_text(text)
assert not re.search(r'\b(?:EXT|STEP|INT)-\d+',text)
assert all(re.sub(r'\[\d+\]','',re.sub(r'\[\[EXT-\d+\]\]','',a))==re.sub(r'\[\d+\]','',b) for a,b in zip(source,output))
record={'source':'data/math.json','source_sha256':hashlib.sha256((P/'data/math.json').read_bytes()).hexdigest(),'output':'proof.zh.md','output_sha256':hashlib.sha256(text.encode()).hexdigest(),'paragraphs':len(source),'rendering_only':True,'changes':['将已有标题渲染为Markdown标题','将内部引用标记渲染为既定读者编号','统一段落空行'],'mathematical_words_unchanged':True,'internal_ids_visible':False}
(P/'records/markdown-render-validation.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n')
print('Rendered',len(source),'approved mathematical paragraphs without audit IDs')
