"""Post-run dependency snapshot; deliberately not a fingerprinted compile claim."""
import importlib.util,json,pathlib,time
root=pathlib.Path(__file__).resolve().parents[2];here=pathlib.Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('compile_digest',root/'GenericComponentT8/compile.py');module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
verified=json.loads((here/'verification.json').read_text());snapshots=[]
for record in verified['results']:
    source=here/f"Case{record['t']}.lean"; snapshots.append(dict(file=str(source.relative_to(root)),transitive_digest=module.digest(source),recorded_exit_code=record['exit_code']))
report=dict(kind='post_run_current_dependency_snapshot',timestamp=time.time(),compile_claim='Direct runs recorded source/input hashes; transitive hashes captured afterward, not at compilation start.',records=snapshots)
(here/'freshness_audit.json').write_text(json.dumps(report,indent=2)+'\n');print('snapshotted',len(snapshots),'transitive dependency digests')
