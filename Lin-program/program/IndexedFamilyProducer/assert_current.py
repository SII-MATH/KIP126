"""Require the exact successful proof artifacts and inputs, never timestamps.

This audits recorded compiler evidence; it is not a substitute for Lean.
Run after compilation finishes, because Lake replaces artifacts atomically.
"""
import hashlib
import json
import re
import argparse
from pathlib import Path

p=Path(__file__).resolve().parent
root=p.parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def fail(message):
    raise AssertionError(message)


def require(condition,message):
    if not condition:
        fail(message)


def main(lake_manifest=None):
    audit_path=p/'compile-audit.json'
    audit=json.loads(audit_path.read_text())
    input_path=p/'proof-inputs.json'
    inputs=json.loads(input_path.read_text())['files']
    require(sha(input_path)==audit['proof_inputs_sha256'],'proof-input manifest differs from successful compile audit')
    require(len(inputs)==139,'expected exactly 139 proof inputs')
    expected={'GeneratedFamily','GeneratedAll','GeneratedEntries','GeneratedCoherence'}
    expected.update(f'GeneratedBatch{i}' for i in range(9))
    expected.update(f'GeneratedPairs{i:02d}' for i in range(14))
    require(len(expected)==27,'internal expected module count')
    actual={f.stem for f in (root/'IndexedFamilyCertificates').glob('Generated*.lean')}
    require(actual==expected,f'generated source set differs: missing={expected-actual}, extra={actual-expected}')
    rows=audit['modules']
    lake=None
    lake_rows={}
    if lake_manifest:
        lake_path=Path(lake_manifest)
        lake=json.loads(lake_path.read_text())
        require(lake['exit_code']==0 and type(lake['session_id']) is int,'Lake run lacks actual exit/session evidence')
        require(lake['proof_inputs_sha256']==sha(input_path),'Lake input manifest changed')
        require(lake['direct_compile_audit_sha256']==sha(audit_path),'original direct audit changed')
        build_log=root/lake['build_log']
        require(sha(build_log)==lake['build_log_sha256'],'Lake build log changed')
        build_text=build_log.read_text()
        require(re.search(r'Build completed successfully \(\d+ jobs\)\.',build_text) is not None,'Lake completion record absent')
        require(not re.search(r'error(?:\(|:)|Build failed',build_text),'Lake build failure present')
        lake_rows={row['module']:row for row in lake['modules']}
        require(len(lake_rows)==27 and set(lake_rows)=={'IndexedFamilyCertificates.'+n for n in expected},'Lake module set differs')
    names=[r['module'] for r in rows]
    require(len(names)==27 and len(set(names))==27,'compiler audit must contain exactly 27 distinct successes')
    require(set(names)=={'IndexedFamilyCertificates.'+n for n in expected},'compiler audit module set differs')
    require(audit['final_assembly_session']==13273 and audit['final_assembly_exit_code']==0,
            'final assembly did not record actual successful exit')
    require(audit['successful_sessions']==[93724,94597,68688,13273],'successful session evidence differs')
    for name,digest in inputs.items():
        file=root/name
        require(file.exists(),f'missing proof input: {name}')
        require(sha(file)==digest,f'changed proof input: {name}')
    require(sum(name.startswith('IndexedFamilyProducer/events/') for name in inputs)==90,
            'proof manifest must contain all 90 concrete event files')
    require({'IndexedFamilyCertificates/'+n+'.lean' for n in expected}.issubset(inputs),
            'proof input manifest omits a generated source')
    require({'IndexedFamilyProducer/family.json','IndexedFamilyProducer/bound90.jsonl',
             'AggregateC2H2Conditional/Data.lean','AggregateC2H2Conditional/source.json'}.issubset(inputs),
            'proof input manifest omits the shared family or original block proofs')
    checked=[]
    for row in rows:
        module=row['module'];name=module.split('.')[-1]
        require(type(row['exit_code']) is int and row['exit_code']==0,f'non-success: {module}')
        source=root/'IndexedFamilyCertificates'/(name+'.lean')
        obj=root/'.lake/build/lib/lean/IndexedFamilyCertificates'/(name+'.olean')
        log=p/(name+'.log')
        artifacts=[(source,'source_sha256'),(log,'log_sha256')]
        if lake is None:
            artifacts.append((obj,'olean_sha256'))
        for file,field in artifacts:
            require(file.exists(),f'missing current {module} artifact: {file.name}')
            require(sha(file)==row[field],f'changed {module} {field}; rerun compilation and record fresh actual exit')
        if lake is not None:
            current=lake_rows[module]
            require(current['exit_code']==0,'Lake module did not succeed: '+module)
            require(re.search(r'Built '+re.escape(module)+r' \(',build_text) is not None,'missing Built record: '+module)
            require(current['source_sha256']==sha(source),'Lake source changed: '+module)
            require(obj.exists() and current['olean_sha256']==sha(obj),'Lake olean changed: '+module)
            trace=obj.with_suffix('.trace')
            require(trace.exists() and sha(trace)==current['trace_sha256'],'Lake trace changed: '+module)
            traced=json.loads(trace.read_text())
            require(traced['synthetic'] is False,'synthetic trace not accepted: '+module)
            require(any(item[0]==str(source.resolve()) for item in traced['inputs']),'source absent from Lake trace: '+module)
            require(traced['outputs'].get('o'),'olean output absent from trace: '+module)
            for item in traced['log']:
                require(item.get('severity')!='error','error in Lake trace: '+module)
        text=source.read_text();logtext=log.read_text()
        require(not re.search(r'\b(sorry|native_decide|axiom)\b',text),f'forbidden proof escape: {module}')
        require(not re.search(r'\berror(?:\(|:)|sorryAx|uncaught exception',logtext),f'failed compiler log: {module}')
        for found in re.findall(r'depends on axioms:\s*\[([^]]*)\]',logtext,re.S):
            used={x.strip() for x in found.split(',') if x.strip()}
            require(used<={'propext','Classical.choice','Quot.sound'},f'unapproved axioms in {module}: {used}')
        checked.append(module)
    interruption=json.loads((p/'entries-interruption.json').read_text())
    require(interruption['success'] is False and interruption['signal']=='SIGTERM','interrupted attempt must remain unsuccessful')
    original=p/'GeneratedEntries.initial.lean.txt'
    require(sha(original)==interruption['initial_source_sha256'],'original interrupted source is not preserved')
    require(sha(original)!=sha(root/'IndexedFamilyCertificates/GeneratedEntries.lean'),
            'current entry proof must not be the interrupted attempt')
    for stem in ['GeneratedAll','GeneratedCoherence']:
        require('depends on axioms: [propext, Quot.sound]' in (p/(stem+'.log')).read_text(),
                f'missing final theorem axiom report: {stem}')
    result=dict(status='current_successful_proof_artifacts',mode='lake' if lake else 'direct',modules=checked,module_count=27,
                proof_input_count=139,accepted_interrupted_attempts=0,
                compile_audit_sha256=sha(audit_path),proof_inputs_sha256=sha(input_path))
    (p/'current-audit.json').write_text(json.dumps(result,indent=2)+'\n')
    print('27 current successful modules; 139 exact inputs; preserved interrupted attempt rejected')


if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--lake-manifest',help='Explicit separate manifest of an observed successful full Lake build')
    args=parser.parse_args()
    main(args.lake_manifest)
