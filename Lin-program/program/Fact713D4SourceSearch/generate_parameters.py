"""Complete d3 quotient certificates for every unresolved source/target column."""
import itertools
import json
import subprocess
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
(HERE/'d3wire').mkdir(exist_ok=True)
def make(name,k,m,n,outgoing,incoming):
    args=[str(k),str(m),str(n),''.join(map(str,outgoing)) or '-', ''.join(map(str,incoming)) or '-']
    run=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),*args],capture_output=True,text=True,check=True)
    w=json.loads(run.stdout)
    (HERE/'d3wire'/f'{name}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
    return w
lines=['import Fact713D4SourceSearch.Comparison','namespace Fact713D4SourceSearch.Parameters',
'open LinearCertificates PageTransitionCertificates Comparison','set_option maxRecDepth 100000','set_option maxHeartbeats 8000000']
records={}
for name,w in [('sourceS',make('sourceS',2,2,2,[0]*4,[0,0,1,1])),
               ('targetS',make('targetS',1,2,2,[0,0],[0,0,1,0]))]:
    records[name]=w
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/{name}.json"',f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
for bits in itertools.product([0,1],repeat=3):
    name='sourceD'+''.join(map(str,bits));records[name]=make(name,3,1,2,list(bits),[0,0])
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/{name}.json"',f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
for u,v in itertools.product([0,1],repeat=2):
    name=f'targetD{u}{v}';records[name]=make(name,2,4,4,[u,1,0,0,v,0,1,0],[0]*16)
    lines += [f'def {name} : WireComparison := page_comparison% "Fact713D4SourceSearch/d3wire/{name}.json"',f'theorem {name}_valid : {name}.Valid := by lin_cert using ()']
bo=lambda x:'true' if x else 'false'
for stem,count,args in [('sourceD',3,'a b c'),('targetD',2,'u v')]:
    lines += [f'def {stem}Selected ({args} : Bool) : WireComparison :=',f'  match {", ".join(args.split())} with']
    lines += [f'  | {", ".join(bo(x) for x in bits)} => {stem}{"".join(map(str,bits))}' for bits in itertools.product([0,1],repeat=count)]
    k,m,n=(3,1,2) if stem=='sourceD' else (2,4,4)
    lines += [f'def {stem} ({args} : Bool) : WireComparison :=',
      f'  let w := {stem}Selected {args}',f'  ⟨1,{k},{m},{n},w.h,w.outgoing,w.incoming,w.inclusion,w.projection,w.up,w.down⟩',
      f'theorem {stem}_valid ({args} : Bool) : ({stem} {args}).Valid := by',
      '  '+' <;> '.join('cases '+x for x in args.split())+' <;> lin_cert using ()']
lines += ['theorem source_compatible (a b c : Bool) : CompatibleMap',
'    (matrixOf sourceS.k sourceS.m sourceS.outgoing) (matrixOf sourceS.m sourceS.n sourceS.incoming)',
'    (matrixOf (sourceD a b c).k (sourceD a b c).m (sourceD a b c).outgoing)',
'    (matrixOf (sourceD a b c).m (sourceD a b c).n (sourceD a b c).incoming) sE3 soE3 siE3 := by',
'  cases a <;> cases b <;> cases c <;> lin_cert using ()',
'theorem target_compatible (u v : Bool) : CompatibleMap',
'    (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming)',
'    (matrixOf (targetD u v).k (targetD u v).m (targetD u v).outgoing)',
'    (matrixOf (targetD u v).m (targetD u v).n (targetD u v).incoming) tE3 toE3 tiE3 := by',
'  cases u <;> cases v <;> lin_cert using ()',
'#print axioms sourceD_valid','#print axioms targetD_valid','#print axioms source_compatible','#print axioms target_compatible',
'end Fact713D4SourceSearch.Parameters']
(HERE/'Parameters.lean').write_text('\n'.join(lines)+'\n')
(HERE/'parameters.json').write_text(json.dumps(records,indent=2)+'\n')
print('14 complete d3 comparisons; 8 source variants and 4 target variants')
