"""Regression checks for producer I/O validation findings."""
import json,pathlib,subprocess,tempfile
here=pathlib.Path(__file__).resolve().parent
with tempfile.TemporaryDirectory(dir=here) as temp:
    temp=pathlib.Path(temp); data=temp/'input.jsonl';out=temp/'output.jsonl'
    source=(here/'actual_t4.input.jsonl').read_text().rstrip('\n')
    data.write_text(source+'\n\n{}\n')
    args=[str(here/'generic-augmented'),str(data),str(here/'actual_t4_augmentation.json'),'0',str(out)]
    trailing=subprocess.run(args,capture_output=True,text=True)
    data.write_text(source+'\n')
    full=subprocess.run(args[:-1]+['/dev/full'],capture_output=True,text=True)
    findings=dict(extra_record_after_blank_accepted=trailing.returncode==0,
                  output_write_failure_reported_success=full.returncode==0)
    assert not any(findings.values()), findings
    assert "exactly one" in trailing.stderr
    assert "output write failed" in full.stderr
    print(json.dumps(dict(status="passed",regressions=2)))
