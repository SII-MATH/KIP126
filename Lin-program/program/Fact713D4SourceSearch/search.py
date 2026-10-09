"""Read-only E3 screen for row2684 d4; E4 requires further complete d3 checks."""
import importlib.util
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('d4screen',ROOT/'Row3147MapSearch/search_lifted.py')
screen=importlib.util.module_from_spec(spec)
spec.loader.exec_module(screen)
screen.HERE=HERE
screen.SELECTED=[('source',12,134,[0]),('target',16,137,[1])]
report=screen.run()
report.update(schema='row2684_d4_E3_map_screen/v1',raw_row=[2684,12,134,'0',None,9000],
    source_named_E2=[1,0,0],target_named_E2=[0,1,0],
    limitation='Screen computes E3 quotients only. Source/target d3 compatibility and full E4 target kernel must still be checked.')
(HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
