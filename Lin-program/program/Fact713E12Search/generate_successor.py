"""Save the seven missing comparisons and exact known successor projections."""
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
baseline=json.loads((HERE/'search.json').read_text())
report=json.loads((HERE/'successor-search.json').read_text())
old=set(json.loads((HERE/'generated-manifest.json').read_text())['keys'])
roots=['S0:20,141:d4','S0:24,145:d3']
closure=set();todo=roots[:]
while todo:
    k=todo.pop()
    if k in closure:continue
    closure.add(k);todo.extend(baseline['graph'][k]['predecessors'])
new=sorted(closure-old,key=lambda k:(baseline['graph'][k]['page'],k))
assert len(new)==7
tag=lambda k:'b_'+k.replace(':','_').replace(',','_').replace('-','neg')
lines=['import Fact713E12Search.Successor','namespace Fact713E12Search.SuccessorData',
       'open LinearCertificates PageTransitionCertificates Data Successor']
for k in new:
    name=tag(k);w=report['comparisons'][k]['wire']
    (HERE/'wires'/(name+'.json')).write_text(json.dumps(w,separators=(',',':'),sort_keys=True)+'\n')
    lines.extend([f'def {name} : WireComparison := page_comparison% "Fact713E12Search/wires/{name}.json"',
                  f'theorem {name}_valid : {name}.Valid := by lin_cert using ()'])
lines.extend([
 'theorem row3242_column : matrixOf 2 1 b_S0_20_141_d4.outgoing = successor := by',
 '  funext i j; exact (show ∀ i j, matrixOf 2 1 b_S0_20_141_d4.outgoing i j = successor i j from by decide) i j',
 'theorem row3551_column : matrixOf 2 1 b_S0_24_145_d3.outgoing = successor := by',
 '  funext i j; exact (show ∀ i j, matrixOf 2 1 b_S0_24_145_d3.outgoing i j = successor i j from by decide) i j',
 'theorem row2999_zero_column : b_S0_20_141_d4.incoming = [false] := by decide',
 'theorem row3386_zero_column : b_S0_24_145_d3.incoming = [false] := by decide',
 '#print axioms row3242_column','#print axioms row3551_column'])
for row,successor_row,block in [(2999,3242,'b_S0_20_141_d4'),(3386,3551,'b_S0_24_145_d3')]:
    lines.extend([
      f'theorem row{row}_from_actual_successor {{X Y Z : Type}}',
      '    (incoming : X → Y) (outgoing : Y → Z)',
      '    (coordinates : Y → Vec 1) (nextCoordinates : Z → Vec 2)',
      '    (zeroY : Y) (zeroZ : Z) (faithful : Function.Injective coordinates)',
      '    (zeroYMeaning : coordinates zeroY = zero) (zeroZMeaning : nextCoordinates zeroZ = zero)',
      '    (successorMeaning : ∀ y, nextCoordinates (outgoing y) =',
      f'      eval (matrixOf 2 1 {block}.outgoing) (coordinates y))',
      '    (squareZero : ∀ x, outgoing (incoming x) = zeroZ) : ∀ x, incoming x = zeroY := by',
      '  apply incoming_zero incoming outgoing coordinates nextCoordinates zeroY zeroZ faithful',
      '    zeroYMeaning zeroZMeaning',
      f'  · simpa only [row{successor_row}_column] using successorMeaning',
      '  · exact squareZero',f'#print axioms row{row}_from_actual_successor'])
lines.append('end Fact713E12Search.SuccessorData')
(HERE/'SuccessorData.lean').write_text('\n'.join(lines)+'\n')
(HERE/'successor-manifest.json').write_text(json.dumps(dict(roots=roots,keys=new,
    raw_successor_rows=[dict(row=3242,source=[20,141],page=4,target=[24,144],raw_target='1'),
                       dict(row=3551,source=[24,145],page=3,target=[27,147],raw_target='0,2')],
    limitation='Comparison matrices use the conditionally derived zero incoming columns. Their full outgoing columns are independently projected from the stored known events. Actual known-event meanings and d-squared remain caller proofs.'),indent=2)+'\n')
print('seven additional comparisons;two successor columns bound to raw source projections')
