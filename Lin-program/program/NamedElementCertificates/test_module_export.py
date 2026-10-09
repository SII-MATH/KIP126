import json
import pathlib
import subprocess

ROOT = pathlib.Path(__file__).resolve().parent
BIN = ROOT / 'module-export'
def run(*args):
    return subprocess.run([str(BIN), *args],capture_output=True,text=True)

batch=run('--batch',str(ROOT/'module-batch.txt'))
assert batch.returncode==0,batch.stderr
assert batch.stdout==run('--batch',str(ROOT/'module-batch.txt')).stdout
rows=[json.loads(s) for s in batch.stdout.splitlines()]
assert len(rows)==3
assert rows[0]==json.loads((ROOT/'module-example.json').read_text())
assert rows[1]['rank']==0 and rows[1]['input']==[]
assert rows[2]['input']==[[[1]]]  # Variable 1 is distinct from unit u.
for bad in ['2|u|u|u/u|0@u','2|u/-|-/u|u/u|1@u',
            '2|u/-|-/u|u|0@u','-1|-|-|-|-','2|u/-|-/u|u/u|0@',
            '2|u/-|-/u|u/u|0@u ', '2|u/-|-/u|u/u']:
    result=run(bad)
    assert result.returncode!=0 and not result.stdout
(ROOT/'module-exported.json').write_text(batch.stdout.splitlines()[0]+'\n')
(ROOT/'module-batch.jsonl').write_text(batch.stdout)
print('module packer: deterministic batch, crossing, zero rank, variable/unit distinction and 7 malformed inputs passed')
