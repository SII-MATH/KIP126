"""Extract the exact local two-term/ESS context without modifying prior artifacts."""
import ast
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
extractor = ROOT / 'GeneralizedLeibnizAudit/extract.py'
tree = ast.parse(extractor.read_text())
definitions = [node for node in tree.body if isinstance(node,
    (ast.Import, ast.ImportFrom, ast.ClassDef, ast.FunctionDef))]
namespace = {}
exec(compile(ast.Module(definitions, []), str(extractor), 'exec'), namespace)
parser = namespace['Parser']()
source = ROOT / 'AdvancedRuleCertificates/kervaire-v2.html'
parser.feed(source.read_text())
identifiers = ['S2.p1', 'S2.p2', 'S2.Ex1', 'S2.Ex2',
               'S2.Thmtheorem1', 'S2.Thmtheorem2', 'S2.Thmtheorem3']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = dict(source_path=str(source.relative_to(ROOT)), source_sha256=sha(source),
    extraction_definitions_sha256=sha(extractor), extractor_sha256=sha(Path(__file__)),
    records=[dict(html_id=i, text=namespace['text'](parser.ids[i]).strip()) for i in identifiers])
(HERE / 'paper-context.json').write_text(json.dumps(report, indent=2) + '\n')
print('seven exact paper context nodes extracted')
