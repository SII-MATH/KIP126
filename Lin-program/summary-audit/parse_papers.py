from html.parser import HTMLParser
from pathlib import Path
import re,json
class Node:
 def __init__(self,tag='',attrs=()): self.tag=tag; self.a=dict(attrs); self.children=[]
 def all(self,tag=None):
  for c in self.children:
   if isinstance(c,Node):
    if tag is None or c.tag==tag: yield c
    yield from c.all(tag)
 def text(self):
  if self.tag=='math': return '$'+self.a.get('alttext','')+'$'
  if self.tag in ['script','style']: return ''
  sep='\n' if self.tag in ['section','div','p','table','tr','h2','h3','h4','h5','h6','li'] else ' '
  return sep.join(c.text() if isinstance(c,Node) else c for c in self.children)
class Parser(HTMLParser):
 def __init__(self): super().__init__(); self.root=Node(); self.stack=[self.root]
 def handle_starttag(self,t,a):
  n=Node(t,a);self.stack[-1].children.append(n)
  if t not in ['meta','link','img','br','hr','input','source','wbr']: self.stack.append(n)
 def handle_endtag(self,t):
  for i in range(len(self.stack)-1,0,-1):
   if self.stack[i].tag==t: self.stack=self.stack[:i];break
 def handle_data(self,s): self.stack[-1].children.append(s)
def parse(path):
 p=Parser();p.feed(Path(path).read_text());return p.root
if __name__=='__main__':
 base=Path(__file__).parent
 for name in ['kervaire','machine']:
  root=parse(base/(name+'-v2.html'))
  for sec in root.all('section'):
   sid=sec.a.get('id','')
   if re.fullmatch(r'S\d+',sid):
    (base/(name+'-'+sid+'.txt')).write_text(re.sub(r'[ \t]+',' ',sec.text()))
  if name=='kervaire':
   tables=[]
   for fig in root.all('figure'):
    if 'ltx_table' in fig.a.get('class','').split():
     rows=[]
     for row in fig.all('tr'):
      cells=[re.sub(r'\s+',' ',c.text()).strip() for c in row.children if isinstance(c,Node) and c.tag in ['td','th']]
      if cells: rows.append(cells)
     tables.append({'id':fig.a.get('id'),'caption':next(fig.all('figcaption')).text(),'rows':rows})
   (base/'paper-tables.json').write_text(json.dumps(tables,indent=2,ensure_ascii=False))
