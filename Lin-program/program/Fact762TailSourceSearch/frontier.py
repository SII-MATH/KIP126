"""Read-only concrete source and finite-window audit for Fact7.6(2)."""
from collections import Counter
import hashlib
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
BASE=ROOT/'upstream/kervaire-49'
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
db=lambda name:sqlite3.connect(f'file:{BASE/name}?mode=ro',uri=True)
ss=db('S0_AdamsSS_t261.db')
meta=dict(ss.execute('SELECT name,value FROM version'))
rows=[]
for page in range(2,meta['t_max']-138+1):
    degree=(14+page,138+page)
    basis=[list(x) for x in ss.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)]
    staircase=[list(x) for x in ss.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',degree)]
    # This matches the producer's finite selection convention only; it
    # does not establish the semantics of a stored differential event.
    selected=[x for x in staircase if x[-1]>page and 10000-x[-1]>=page]
    rows.append(dict(page=page,target_degree=degree,basis=basis,staircase=staircase,
        selected_by_raw_convention=selected,within_basis_window=degree[1]<=meta['t_max'],
        within_d2_window=degree[1]<=meta['d2_t_max']))
active=[x['page'] for x in rows if x['page']>=3 and x['selected_by_raw_convention']]
assert active==[5,9]
late=[x for x in rows if x['page']>=40 and x['basis']]
assert [x['page'] for x in late]==[42,43,44]
assert all(any(row[2] is None for row in x['basis']) for x in late)

sig=db('Csigmasq_AdamsSS_t200.db')
sig_source=[list(x) for x in sig.execute('SELECT id,s,t,base,diff,level FROM Csigmasq_AdamsE2_ss WHERE s=14 AND t=154 ORDER BY id')]
assert [7443,14,154,'1',None,9952] in sig_source
sig_basis=[list(x) for x in sig.execute('SELECT id,mon FROM Csigmasq_AdamsE2_basis WHERE s=14 AND t=154 ORDER BY id')]
assert sig_basis[1]==[7441,'1,1,7,1,275,1,1']
mapdb=db('map_AdamsSS_Csigmasq_to_S0_t200.db')
maps=list(mapdb.execute('SELECT id,map FROM map_AdamsE2_Csigmasq_to_S0 WHERE id=1'))
assert maps==[(1,';')]
events=load(HERE/'proof-events.json')['matches']
d5=next(x for x in events if x['id']=='721503')
d9=next(x for x in events if x['id']=='2397125')
assert d5['info']=='Csigmasq__S0' and d5['r']=='5' and d5['dx']==''
assert 'S0 (14,4)' in d9['info'] and d9['r']=='9' and d9['dx']=='0'
map_results=load(HERE/'map-sources.json')['results']
report=dict(status='concrete_sources_located_no_infinite_tail_proved',
    exact_target=dict(degree=[14,139],staircase=[3080,14,139,'1',None,9000],
        basis=[3080,'1,1,7,1,275,1']),
    target_window=rows,raw_selected_nonempty_pages_after_d2=active,
    metadata=meta,map_search_counts=dict(Counter(x['status'] for x in map_results)),
    configured_direct_maps_scanned=len(map_results),
    d5_source=dict(map='Csigmasq__S0',filtration=0,suspension=15,
        source_degree=[14,154],staircase=sig_source,basis=sig_basis,
        named_E2_basis_id=7441,named_staircase_id=7443,map_generator_image=maps,
        proof_clue=d5,future_event_page=48,
        gap='No complete basis d2 column is stored for Csigmasq. Full staircase-coordinate interpretation and actual d5 naturality remain unproved.'),
    d9_source=dict(coefficient='d0',coefficient_degree=[4,18],
        target_degree=[23,147],product_source_degree=[18,157],product_target_degree=[27,165],
        proof_clue=d9,gap='Need actual d0 cycle, product-source zero, full E9 target reflection and quotient/product meanings.'),
    strict_bound_audit=dict(nonnegative_filtration_bounds_only_incoming=True,
        raw_basis_coverage_ends_at_page=123,d2_coverage_ends_at_page=39,
        later_database_rows_are_not_vanishing_theorem=True,
        existing_all_page_vanishing_line_is_caller_premise=True,
        filtered_two_term_bounds_apply_to_extension_sequence_not_sphere_Adams=True,
        no_all_page_source_cycle_or_Adams_vanishing_bound_found=True),
    recommendation='Develop concrete d5 Csigmasq and d9 d0 finite detectors, but retain a separate genuine all-page Adams vanishing/structural proof obligation.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),
        HERE/'proof-events.json',HERE/'map-sources.json',BASE/'S0_AdamsSS_t261.db',
        BASE/'Csigmasq_AdamsSS_t200.db',BASE/'map_AdamsSS_Csigmasq_to_S0_t200.db']})
(HERE/'frontier.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='target_window'},indent=2))
