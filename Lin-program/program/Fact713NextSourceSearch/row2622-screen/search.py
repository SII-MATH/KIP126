"""All configured S0 maps on row2622, with complete one-dimensional target."""
import importlib.util
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('bounded_next',ROOT/'Row3147MapSearch/search_lifted.py')
helper=importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
helper.HERE=HERE
helper.SELECTED=[('source',11,133,[1]),('target',14,135,[0])]
helper.run()
