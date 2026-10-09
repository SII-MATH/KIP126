"""Independent semantic and four-comparison review; never modifies Lean sources."""
import hashlib
import importlib.util
import itertools
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
spec = importlib.util.spec_from_file_location('arithmetic',r/'Fact762IncomingCertificates/review.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
cases = [
    ('Fact762','Fact762PageCertificates/Survivor.lean','Fact762PageCertificates/comparison.json',1,[14,139]),
    ('Fact763','Fact763PageCertificates/Survivor.lean','Fact763PageCertificates/comparison.json',4,[10,134]),
    ('Fact721First','Fact721PageCertificates/First.lean','Fact721PageCertificates/first-comparison.json',1,[11,133]),
    ('Fact721Second','Fact721PageCertificates/Second.lean','Fact721PageCertificates/second-comparison.json',0,[12,134]),
]
checks = []
for label, lean, path, coordinate, degree in cases:
    w = json.loads((r/path).read_text())
    a.check_wire(w)
    target = [int(i==coordinate) for i in range(w['m'])]
    assert not any(a.product(w['outgoing'],target,w['k'],w['m'],1))
    assert all(a.product(w['incoming'],list(x),w['m'],w['n'],1) != target
               for x in itertools.product([0,1],repeat=w['n']))
    image = a.product(w['projection'],target,w['h'],w['m'],1)
    assert any(image)
    checks.append(dict(case=label,degree=degree,local_coordinate=coordinate,dimensions={k:w[k] for k in ['k','m','n','h']},
        full_incoming_vectors_checked=2**w['n'],projected_vector=image))
files = [p/'Basic.lean',p/'Cases.lean',p/'README.md',p/'independent-review.py',
         r/'PermanentCycleCertificates/Finite.lean',r/'PermanentCycleCertificates/System.lean',
         r/'SemanticTrajectoryCertificates/Page.lean',r/'PageTransitionCertificates/Trajectory.lean',
         r/'LinProgramCertificates/Tactic.lean',r/'Fact762IncomingCertificates/review.py']
files += [r/name for _,lean,path,_,_ in cases for name in [lean,path]]
result = dict(status='independent_semantic_review_and_four_finite_replays_passed',findings=[],
    compilation='Parent owns current compilation; this review does not certify its current success or historical logs.',
    finite_checks=checks,
    semantic_checks={
      'full_incoming': 'Meaning.incoming_all quantifies over every actual incoming element, not named database rows.',
      'full_outgoing': 'Meaning.outgoing_all plus outgoing coordinate injectivity transports the zero matrix value to the actual outgoing value.',
      'named_binding': 'Each singleton stage is the named module wire and List.ofFn target; named coordinates are explicit caller evidence.',
      'page_offset': 'System index0 is Adams page2; singleton stages have length1 and TailVanishing s1 starts at index1, Adams page3.',
      'tail_non_circular': 'TailVanishing quantifies over full incoming/outgoing spaces and does not mention the named element or Permanent.',
      'actual_transition': 'System.homology_zero states the actual cycle-to-next zero iff incoming image law; it is a caller-supplied mathematical premise.',
      'tactic_binding': 'Certificate is indexed by the same System and starting element as the Permanent goal; permanent_cert expands to verifier.sound with kernel decide on finite stages.',
      'nonboundary_surjectivity': 'Surjectivity of finite incoming coordinates is unnecessary to transport nonimage to actual nonimage; every actual incoming image has a checked finite coordinate.',
    },
    limitations=[
      'TailVanishing s1 is strong full-space vanishing from Adams page3 onward and is not established for these four actual targets.',
      'These are conditional interfaces, not proofs of actual Kervaire permanence or a way to turn finite truncation into infinite permanence.',
      'System is an abstract page model; topology, actual full coordinate meaning and homology transition laws remain caller inputs.',
      'Named polynomial evaluation and identification with the original topological element require the existing expression semantics and their interpretation; a coordinate equality alone does not prove that identification.',
    ],
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
build = []
for name in ['Basic','Cases']:
    record = json.loads((p/f'{name}-compile.json').read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(p/f'{name}.lean')
    assert record['log_sha256'] == sha(p/f'{name}.log')
    log = (p/f'{name}.log').read_text()
    assert 'error:' not in log
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]',log)
    assert len(axioms) == (2 if name == 'Basic' else 8)
    assert all({x.strip() for x in v.split(',')} <= {'propext','Classical.choice','Quot.sound'} for v in axioms)
    build.append(dict(module=name,exit_code=0,source_log_matched=True,
        direct_olean_matches_now=record['olean_sha256'] == sha(r/f'.lake/build/lib/lean/ActualPermanenceBoundary/{name}.olean'),
        standard_axiom_reports=len(axioms)))
result['build_observation'] = build
result['tactic_update_review'] = 'permanent_cert uses verifier.sound with first | rfl | decide. Both branches produce a kernel-checked proof of exactly check c = true; proof-field reduction introduces no evaluator or trust bypass.'
(p/'independent-review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('Independent permanence review passed: four named full-matrix d2 stages; conditional tail and meaning audited')
