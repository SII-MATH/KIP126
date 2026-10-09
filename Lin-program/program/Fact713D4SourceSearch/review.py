"""Replay all 70 finite E3 searches independently; no E4 claim."""
import importlib.util
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('d4review',ROOT/'Row3147MapSearch/review.py')
review=importlib.util.module_from_spec(spec)
spec.loader.exec_module(review)
helper=HERE/'search_lifted.py'
if not helper.exists():helper.symlink_to('../Row3147MapSearch/search_lifted.py')
review.HERE=HERE
review.run(rerun=False)
