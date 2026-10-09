"""Read-only configured-map screen for the first Fact7.21 d6.

Only new survey files are written. No Lean objects or frozen sources change.
An E3 map candidate is not yet an E6 naturality proof.
"""
import importlib.util
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('first_d6_screen',ROOT/'Row3147MapSearch/search_lifted.py')
screen=importlib.util.module_from_spec(spec);spec.loader.exec_module(screen)
screen.HERE=HERE
screen.SELECTED=[('source',11,133,[1]),('target',17,138,[0,1,2])]
report=screen.run()
report.update(schema='fact721_first_d6_configured_map_screen/v1',
    first_input=[2622,11,133,'1',None,9000],d6_target=[2994,17,138,'0,1,2',None,9000],
    limitation='Read-only E3 candidate screen. Full E3-to-E6 actual map descent and naturality must still be proved. No desired d6 cycle follows from this screen.')
(HERE/'lifted-search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
