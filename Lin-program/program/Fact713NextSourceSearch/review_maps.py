"""Replay every map and nonzero target direction using the independent oracle."""
import collections
import contextlib
import copy
import importlib.util
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('review2773',ROOT/'Row3147MapSearch/review.py')
audit=importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
raw=json.loads((HERE/'lifted-search.json').read_text())
reviews=[]
for label,vector in raw['target_vectors']:
    directory=HERE/label
    directory.mkdir(exist_ok=True)
    helper=directory/'search_lifted.py'
    if not helper.exists():helper.symlink_to('../../Row3147MapSearch/search_lifted.py')
    view=copy.deepcopy(raw)
    selected=next(x for x in raw['bounds']['selected'] if x[0]==label)
    view['bounds']['selected']=[raw['bounds']['selected'][0],['target',*selected[1:]]]
    for entry in view['maps']:
        item=copy.deepcopy(entry.get(label))
        for old,_ in raw['target_vectors']:entry.pop(old,None)
        if item is not None:entry['target']=item
        if any(entry.get(k,{}).get('status')!='computed_cycle_quotient' for k in ['source','target']):entry['status']='unknown'
        elif any(entry['source']['quotient']):entry['status']='source_nonzero_quotient'
        elif any(entry['target']['quotient']):entry['status']='candidate_needs_full_map_compatibility'
        else:entry['status']='target_zero_quotient'
    view['counts']=dict(collections.Counter(x['status'] for x in view['maps']))
    (directory/'lifted-search.json').write_text(json.dumps(view,indent=2,sort_keys=True)+'\n')
    audit.HERE=directory
    with (directory/'review.log').open('w') as stream,contextlib.redirect_stdout(stream):
        result=audit.run(rerun=False)
    reviews.append(dict(label=label,vector=vector,review_sha256=audit.sha(directory/'review.json'),
        complete_cycle_quotients=result['complete_cycle_quotients'],reduction_steps=result['reduction_steps'],
        unknown_stages=result['unknown_stages']))
eligible=[]
for entry in raw['maps']:
    if any(entry.get(label,{}).get('status')!='computed_cycle_quotient' for label in ['source','target','target1','targetsum']):continue
    images=[entry[label]['quotient'] for label,_ in raw['target_vectors']]
    assert images[2]==[a^b for a,b in zip(images[0],images[1])]
    eligible.append(dict(map=entry['map']['name'],section=entry['section'],ordinal=entry['ordinal'],
        source_zero=not any(entry['source']['quotient']),target_images=images,
        detects=[any(v) for v in images],full_target_injective=all(any(v) for v in images)))
zero=[x for x in eligible if x['source_zero']]
singles=[x['map'] for x in zero if x['full_target_injective']]
pairs=[[a['map'],b['map']] for a,b in itertools.combinations(zero,2)
       if not a['full_target_injective'] and not b['full_target_injective']
       and all(x or y for x,y in zip(a['detects'],b['detects']))]
candidate=json.loads((HERE/'candidates.json').read_text())
assert candidate['eligible']==eligible and candidate['single_source_zero_injective']==singles
assert candidate['pairs_source_zero_injective']==pairs
assert singles==['S0__C2h5']
result=dict(status='all_configured_maps_independently_replayed',maps=len(raw['maps']),directions=3,
    full_target_dimension=2,source_zero_maps=len(zero),single_candidates=singles,joint_pairs=pairs,
    complete_maps=len(eligible),incomplete_maps=len(raw['maps'])-len(eligible),reviews=reviews,
    source_row=raw['row'],input_sha256={str(p.relative_to(ROOT)):audit.sha(p) for p in
        [Path(__file__),HERE/'search_maps.py',HERE/'lifted-search.json',HERE/'candidates.json',ROOT/'Row3147MapSearch/review.py']},
    limitation='Numerical candidate maps only; no full chain-map or actual naturality proof for these alternatives. The separate complete C2h5 detector supplies the conditional theorem.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print('70 maps; all 3 target directions replayed; 1 single candidate; 68 joint pairs')
