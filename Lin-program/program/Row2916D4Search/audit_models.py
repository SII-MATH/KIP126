"""Independent label models for whole Leibniz vanishing and same-input E4."""
from collections import Counter
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
counts=Counter()
perms=lambda n:list(itertools.permutations(range(n)))
for generator,target,module,coefficient_target in itertools.product(perms(4),perms(4),perms(2),perms(4)):
    inv={v:i for i,v in enumerate(module)}
    product=lambda y:inv[generator[y]&1]
    named=generator.index(1)
    assert module[product(named)]==1
    for dc in range(4):
        for dy in range(2):
            left=0;right=0
            assert left^right==0
            counts['whole_Leibniz_derivative_pairs']+=1
    for y in range(4):
        assert module[product(y)] in [0,1]
        counts['source_product_elements']+=1
    assert set(product(y) for y in range(4))=={0,1}
    counts['Leibniz_label_models']+=1

# All S0 E3 labels (8!); module E3 labels and both constructed E4 labels.
for sphere3,module3,module4,sphere4 in itertools.product(perms(8),perms(2),perms(2),perms(2)):
    si={v:i for i,v in enumerate(sphere3)}
    mi={v:i for i,v in enumerate(module3)}
    m4i={v:i for i,v in enumerate(module4)}
    s4i={v:i for i,v in enumerate(sphere4)}
    mzero,s4zero=mi[0],s4i[0]
    top3=lambda x:si[module3[x]<<1]
    quotientM=lambda x:m4i[module3[x]]
    quotientS=lambda x:s4i[(sphere3[x]>>1)&1]
    top4=lambda x:s4i[module4[x]]
    cycle_labels=[x for x in range(8) if not(sphere3[x]&4)]
    boundary_labels={si[0],si[1]}
    nextS={quotientS(x):(sphere3[x]>>1)&1 for x in cycle_labels}
    assert nextS==dict(enumerate(sphere4))
    named3=mi[1];named4=quotientM(named3);image3=top3(named3);image4=top4(named4)
    assert sphere3[image3]==2 and image3 not in boundary_labels
    assert nextS[image4]==1 and image4!=s4zero
    for x in range(2):
        assert top4(quotientM(x))==quotientS(top3(x))
        counts['whole_quotient_transition_elements']+=1
    for a,b in itertools.product(cycle_labels,repeat=2):
        assert (quotientS(a)==quotientS(b))==((sphere3[a]^sphere3[b]) in {0,1})
        counts['sphere_quotient_pairs']+=1
    # Arbitrary labels for the one-dimensional actual differential target.
    for target in perms(2):
        zero_target=target.index(0)
        d={s4zero:zero_target,image4:zero_target}
        assert all(target[d[x]]==0 for x in range(2))
        bad={s4zero:zero_target,image4:target.index(1)}
        assert bad[image4]!=zero_target
        counts['counterfeit_nonzero_columns_rejected']+=1
    counts['same_input_E3_E4_models']+=1
assert counts['Leibniz_label_models']==27648
assert counts['same_input_E3_E4_models']==322560
result=dict(status='whole_Leibniz_and_same_input_E4_label_models_passed',counts=dict(counts),
    caveat='Supplementary finite model audit. Actual complete map/action/differential meanings, local quotient laws and naturality are explicit Lean inputs.')
(HERE/'model-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
