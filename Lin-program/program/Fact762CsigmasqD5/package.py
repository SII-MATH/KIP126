"""Package every finite comparison, d2 column and map square for kernel checking."""
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
report=json.loads((HERE/'search.json').read_text())
maps=json.loads((HERE/'maps.json').read_text())
d2=json.loads((HERE/'d2.json').read_text())
bl=lambda a:'['+','.join('true' if x else 'false' for x in a)+']'
tag=lambda o,s,t,r: ('c' if o=='Csigmasq' else 's')+f'{s}_{t}_{r}'
keys=sorted(report['comparisons'],key=lambda k:(report['comparisons'][k]['page'],k))
(HERE/'wire').mkdir(exist_ok=True)
lines=['import Fact762CsigmasqD5.Maps','import PageTransitionCertificates.InducedMap',
    'import PageTransitionCertificates.Import','set_option maxRecDepth 8192',
    'set_option maxHeartbeats 8000000','namespace Fact762CsigmasqD5.Comparison',
    'open LinearCertificates PageTransitionCertificates']
for key in keys:
    b=report['comparisons'][key];o=b['object'];s,t=b['center'];r=b['page'];w=b['wire'];n=tag(o,s,t,r)
    (HERE/'wire'/f'{n}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
    lines.extend([f'def {n} : WireComparison := page_comparison% "Fact762CsigmasqD5/wire/{n}.json"',
        f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid'])
for r in [2,3,4]:
    for key in keys:
        b=report['comparisons'][key]
        if b['object']!='Csigmasq' or b['page']!=r:continue
        s,t=b['center'];cn=tag('Csigmasq',s,t,r);sn=tag('S0',s,t-15,r)
        mapname=lambda a,b: f'Maps.m{a}_{b}.algebra.mat' if r==2 else f'f{a}_{b}_{r}'
        mid,up,down=mapname(s,t),mapname(s+r,t+r-1),mapname(s-r,t-r+1)
        n=f'f{s}_{t}_{r+1}'
        lines.extend([f'theorem {n}_compatible : CompatibleMap (matrixOf {cn}.k {cn}.m {cn}.outgoing) '
            f'(matrixOf {cn}.m {cn}.n {cn}.incoming) (matrixOf {sn}.k {sn}.m {sn}.outgoing) '
            f'(matrixOf {sn}.m {sn}.n {sn}.incoming) ({mid}) ({up}) ({down}) := by lin_cert using ()',
            f'def {n} := coordinateMap {cn}.comparison {sn}.comparison ({mid})',
            f'#print axioms {n}_compatible'])
lines.extend(['def named2 : Vec 6 := fun i => i.val == 1',
    'def sphere2 : Vec 3 := fun i => i.val == 1',
    'def named : Vec 2 := fun i => i.val == 1',
    'def sphere : Vec 1 := fun _ => true',
    'theorem named2_map : eval Maps.m14_154.algebra.mat named2 = sphere2 := by decide',
    'theorem source2_cycle : InKernel (matrixOf 8 6 c14_154_2.outgoing) named2 := by lin_cert using ()',
    'theorem source2_next : eval c14_154_2.comparison.projection named2 = named := by decide',
    'theorem source3_cycle : InKernel (matrixOf c14_154_3.k 2 c14_154_3.outgoing) named := by lin_cert using ()',
    'theorem source3_next : eval c14_154_3.comparison.projection named = named := by decide',
    'theorem source4_cycle : InKernel (matrixOf 0 2 c14_154_4.outgoing) named := by lin_cert using ()',
    'theorem source4_next : eval c14_154_4.comparison.projection named = named := by decide',
    'theorem named_map5 : eval f14_154_5 named = sphere := by decide',
    'theorem map5_surjective : ∀ y : Vec 1, ∃ x : Vec 2, eval f14_154_5 x = y := by decide',
    'theorem target5_reflects : ∀ x : Vec 1, eval f19_158_5 x = zero → x = zero := by decide'])
for n in ['named2_map','source2_cycle','source2_next','source3_cycle','source3_next','source4_cycle','source4_next','named_map5','map5_surjective','target5_reflects']:
    lines.append(f'#print axioms {n}')
lines.append('end Fact762CsigmasqD5.Comparison')
(HERE/'Comparison.lean').write_text('\n'.join(lines)+'\n')

(HERE/'d2wire').mkdir(exist_ok=True)
lines=['import Fact762CsigmasqD5.D2','set_option maxRecDepth 8192','set_option maxHeartbeats 8000000',
    'namespace Fact762CsigmasqD5.D2Data','open D2']
count=0
for matrix in d2['matrices'].values():
    for column in matrix['columns']:
        co=column['coefficient']['mon'].split(',')
        coefficient=[sum(([int(co[i])]*int(co[i+1]) for i in range(0,len(co),2)),[])] if co!=[''] else [[]]
        diff=[]
        for _,raw,_ in column['coefficient']['differential_rows']:
            fields=raw.split(',')
            diff.append(sum(([int(fields[i])]*int(fields[i+1]) for i in range(0,len(fields),2)),[]) if raw else [])
        expanded=[[sorted(x+[3,3]) for x in coefficient],diff] if column['generator']==1 else [diff,[]]
        ordered_output=[[],[]]
        for j,(_,raw) in enumerate(matrix['target']):
            if j not in column['coordinates']:continue
            fields=list(map(int,raw.split(',')))
            mon=sum(([fields[i]]*fields[i+1] for i in range(0,len(fields)-1,2)),[])
            ordered_output[fields[-1]].append(mon)
        reduction=dict(version=1,rank=2,input=expanded,output=ordered_output,relations=column['relations'],terms=column['terms'])
        w=dict(coefficient=coefficient,coefficientDifferential=diff,top=column['generator']==1,reduction=reduction)
        filename=f"d2wire/b{column['id']}.json"
        (HERE/filename).write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
        n=f"b{column['id']}"
        lines.extend([f'def {n} : D2.Wire := csigmasq_d2% "Fact762CsigmasqD5/{filename}"',
            f'theorem {n}_valid : {n}.Valid := by lin_cert using ()',f'#print axioms {n}_valid'])
        count+=1
lines.append('end Fact762CsigmasqD5.D2Data')
(HERE/'D2Data.lean').write_text('\n'.join(lines)+'\n')
print('d2 certificates',count,'comparisons',len(keys),'map squares',len(maps['compatible']))

lines=['import Fact762CsigmasqD5.D2Data','import Fact762CsigmasqD5.Comparison',
    'import ModuleToModuleCertificates.Matrix','set_option maxRecDepth 8192',
    'set_option maxHeartbeats 8000000','namespace Fact762CsigmasqD5.D2Links',
    'open LinearCertificates PageTransitionCertificates NamedElementCertificates ModuleToModuleCertificates ModuleExpressions Comparison']
pl=lambda xs:'['+','.join('['+','.join(map(str,x))+']' for x in xs)+']'
for key,b in sorted(d2['matrices'].items()):
    s,t=b['source_degree'];n=f'd{s}_{t}';target=b['target']
    lines.append(f'def {n} : Matrix {b["rows"]} {b["cols"]} := matrixOf {b["rows"]} {b["cols"]} '+bl(b['entries']))
    ex=[]
    for _,raw in target:
        fields=list(map(int,raw.split(',')));g=fields[-1]
        co=sum(([fields[i]]*fields[i+1] for i in range(0,len(fields)-1,2)),[])
        ex.append('['+','.join(pl([co]) if i==g else '[]' for i in range(2))+']')
    lines.append(f'def {n}_basis : Fin {len(target)} → Expression 2 := fun i => toExpression 2 ((['+','.join(ex)+'] : List (List Polynomial))[i.val]?.getD [])')
    for j,col in enumerate(b['columns']):
        bid=col['id']
        lines.append(f'theorem {n}_column{j} : decode {n}_basis (fun i => {n} i ⟨{j},by decide⟩) = toExpression 2 D2Data.b{bid}.reduction.output := by decide')
    if b['cols']:lines.append(f'#print axioms {n}_column0')
for key,b in sorted(report['comparisons'].items()):
    if b['object']!='Csigmasq' or b['page']!=2:continue
    s,t=b['center'];n=tag('Csigmasq',s,t,2)
    lines.append(f'theorem {n}_outgoing_link : matrixOf {n}.k {n}.m {n}.outgoing = d{s}_{t} := by decide')
    lines.append(f'theorem {n}_incoming_link : matrixOf {n}.m {n}.n {n}.incoming = d{s-2}_{t-1} := by decide')
lines.append('end Fact762CsigmasqD5.D2Links')
(HERE/'D2Links.lean').write_text('\n'.join(lines)+'\n')
