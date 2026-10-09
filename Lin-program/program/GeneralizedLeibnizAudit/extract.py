"""Extract version-fixed theorem/definition text with each math node's TeX alttext."""
import hashlib,json,re
from html.parser import HTMLParser
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
source=R/'AdvancedRuleCertificates/kervaire-v2.html'
class Node:
    def __init__(self,tag='',attrs=()):self.tag=tag;self.attrs=dict(attrs);self.children=[]
class Parser(HTMLParser):
    def __init__(self):super().__init__();self.root=Node();self.stack=[self.root];self.ids={}
    def handle_starttag(self,tag,attrs):
        n=Node(tag,attrs);self.stack[-1].children.append(n)
        if 'id' in n.attrs:self.ids[n.attrs['id']]=n
        if tag not in ['area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr']:self.stack.append(n)
    def handle_endtag(self,tag):
        for i in range(len(self.stack)-1,0,-1):
            if self.stack[i].tag==tag:self.stack=self.stack[:i];break
    def handle_data(self,s):self.stack[-1].children.append(s)
def text(n):
    if isinstance(n,str):return n
    if n.tag=='math':return '$'+n.attrs.get('alttext','')+'$'
    if n.tag in ['script','style']:return ''
    return ''.join(text(c) for c in n.children)
p=Parser();p.feed(source.read_text())
ids=['S2.Thmtheorem1','S2.Thmtheorem2','S2.Thmtheorem3','S2.Thmtheorem4',
    'S2.Thmtheorem7','S2.Thmtheorem8','S2.Thmtheorem10','S2.Thmtheorem12','S2.Thmtheorem15',
    'S3.Thmtheorem10','S3.Thmtheorem11','S3.Thmtheorem15','S3.Thmtheorem17','S3.Thmtheorem19',
    'S4.Thmtheorem6','S4.Thmtheorem12','S4.Thmtheorem14','S5.E2','S5.E3',
    'S4.Thmtheorem16','S5.Thmtheorem4','S5.Thmtheorem9','S5.Thmtheorem10',
    'S6.Thmtheorem1','S6.Thmtheorem8']
records=[]
for identity in ids:
    assert identity in p.ids,identity
    value=re.sub(r'\n\s*\n(?:\s*\n)+','\n\n',text(p.ids[identity])).strip()
    records.append({'html_id':identity,'text':value})
section=p.ids['S6'];siblings=section.children
position=next(i for i,c in enumerate(siblings) if isinstance(c,Node) and c.attrs.get('id')=='S6.Thmtheorem1')
proof=[]
for node in siblings[position+1:]:
    if isinstance(node,Node) and node.attrs.get('id','').startswith('S6.Thmtheorem'):break
    if isinstance(node,Node):proof.append(text(node))
records.append({'html_id':'S6.afterTheorem1.beforeNextTheorem','text':'\n'.join(proof).strip()})
out={'source_url':'https://arxiv.org/html/2412.10879v2','version':'v2, 2025-02-22',
    'source_path':str(source.relative_to(R)),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
    'extractor_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    'method':'HTML node IDs; math alttext replaces MathML to avoid duplicated formulas.',
    'records':records}
(P/'paper-excerpts.json').write_text(json.dumps(out,indent=2,ensure_ascii=True)+'\n')
(P/'paper-excerpts.md').write_text('# Fixed-version paper excerpts\n\n'+
    '\n\n'.join('## '+r['html_id']+'\n\n'+r['text'] for r in records)+'\n')
print(len(records),'version-fixed theorem/definition/proof excerpts')
