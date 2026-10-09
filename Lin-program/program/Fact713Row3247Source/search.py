"""Search every configured S0 map on the complete row-3247 E3 classes."""
import importlib.util
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('screen',ROOT/'Row3147MapSearch/search_lifted.py')
screen=importlib.util.module_from_spec(spec);spec.loader.exec_module(screen)
screen.HERE=HERE
screen.SELECTED=[('source',18,141,[0,1]),('target',21,143,[1])]
report=screen.run()
report.update(schema='row3247_d3_E3_map_screen/v1',raw_row=[3247,18,141,'0,1',None,9000],
    source_named_E2=[1,1,0],target_named_E2=[0,1],
    limitation='Complete finite E3 quotient search. Actual map and differential meanings remain explicit.')
(HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
