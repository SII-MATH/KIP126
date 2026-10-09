"""Complete earlier targets for outgoing d11 through d17."""
import hashlib
import importlib.util
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('helper',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec);spec.loader.exec_module(helper)
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True);meta=helper.metadata(c)
degrees=dict(t11=(23,144),i11=(20,142),o11=(26,146),t4=(27,147),t12=(24,145),o4=(30,149),
    t13=(25,146),i13=(22,144),t14=(26,147),i14=(23,145),t15=(27,148),t16=(28,149),
    i17=(25,147),ii17=(22,145),t17=(29,150),it17=(26,148),o17=(32,152))
blocks={}
for name,d in degrees.items():
    b=helper.comparison(c,'S0',*d,meta)
    b.update(degree=d,staircase=list(c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',d)))
    blocks[name+'d2']=b
for name,degree,m,n,inc in [('t11d3',degrees['t11'],2,1,'10'),('t4d3',degrees['t4'],2,1,'11'),
                           ('i17d3',degrees['i17'],1,0,'-'),('t17d3',degrees['t17'],1,0,'-')]:
    w=json.loads(subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),
        '0',str(m),str(n),'-',inc],check=True,text=True,capture_output=True).stdout)
    blocks[name]=dict(degree=degree,page=3,wire=w,
        provenance='outgoing actual earlier target zero; incoming recorded d3 or empty E2 source')
for name,b in blocks.items():
    (HERE/'wire'/f'{name}.json').write_text(json.dumps(b['wire'],sort_keys=True,separators=(',',':'))+'\n')
lines=['import PageTransitionCertificates.Import','namespace Fact721SecondE18.Data','open LinearCertificates PageTransitionCertificates']
for name in blocks:
    lines += [f'def {name} : WireComparison := page_comparison% "Fact721SecondE18/wire/{name}.json"',
              f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',f'#print axioms {name}_valid']
lines+=['end Fact721SecondE18.Data'];(HERE/'Data.lean').write_text('\n'.join(lines)+'\n')
(HERE/'source.json').write_text(json.dumps(dict(database_sha256=hashlib.sha256(db.read_bytes()).hexdigest(),
    blocks=blocks,known_d3=[3311,3551,3482,3553],known_d4=[3479,3736],
    limitations='Complete actual E2 coordinates, recorded event meanings, and quotient laws remain mathematical inputs.'),indent=2)+'\n')
for name,b in blocks.items():print(name,[b['wire'][f] for f in ['k','m','n','h']])
