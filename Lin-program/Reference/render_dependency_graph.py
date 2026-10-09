from html import escape
from pathlib import Path
import math
import re

ROOT = Path(__file__).parent
SOURCE = ROOT / "roadmap.md"
SVG_OUT = ROOT / "roadmap.svg"
HTML_OUT = ROOT / "roadmap.html"

GROUPS = [
    ("U", "U  本科数学叶节点", "#DDEBFF"),
    ("L", "L  有限表示与可执行对象", "#D8F3E8"),
    ("C", "C  链复形、同调与滤过", "#E5F6D9"),
    ("W", "W  有限 CW 复形、稳定对象与余纤维", "#FFF0C2"),
    ("A", "A  模 2 上同调、Steenrod 运算与 A-模", "#E9DDFB"),
    ("R", "R  分辨率、Hom、Ext 与 E₂", "#FFE3C2"),
    ("E", "E  Adams 谱序列、微分与存活", "#FFDDB8"),
    ("X", "X  余纤维扩张谱序列", "#FFD7D7"),
    ("G", "G  合成规则与规则传播", "#F8D7E8"),
    ("P", "P  Lin Program 输入、输出与证书", "#E2E8F0"),
    ("K", "K  Kervaire 局部计算性结论", "#D8F3F0"),
]
GROUP_BY_PREFIX = {p: (title, color) for p, title, color in GROUPS}


def parse_tables():
    lines = SOURCE.read_text(encoding="utf-8").splitlines()
    nodes = {}
    order = {prefix: [] for prefix, _, _ in GROUPS}
    i = 0
    while i + 1 < len(lines):
        separator = re.match(r"^\s*\|?\s*:?-{3,}", lines[i + 1])
        if not lines[i].startswith("|") or not separator:
            i += 1
            continue
        i += 2
        while i < len(lines) and lines[i].lstrip().startswith("|"):
            cells = [x.strip() for x in lines[i].strip().strip("|").split("|")]
            if cells:
                match = re.fullmatch(r"([A-Z]+\d{2})", cells[0])
                if match and len(cells) >= 4:
                    ident = match.group(1)
                    prefix = re.match(r"[A-Z]+", ident).group(0)
                    if prefix in GROUP_BY_PREFIX:
                        label = re.sub(r"\*\*([^*]*)\*\*", r"\1", cells[1])
                        nodes[ident] = {
                            "id": ident,
                            "label": label,
                            "deps_text": cells[-1],
                            "prefix": prefix,
                        }
                        if ident not in order[prefix]:
                            order[prefix].append(ident)
            i += 1
    return nodes, order


def expand_refs(text, nodes):
    refs = []
    for token in re.findall(r"[A-Z]+\d{2}(?:[–-][A-Z]+\d{2})?", text):
        if "–" in token or "-" in token:
            sep = "–" if "–" in token else "-"
            left, right = token.split(sep)
            lp = re.match(r"[A-Z]+", left).group(0)
            rp = re.match(r"[A-Z]+", right).group(0)
            if lp == rp:
                a = int(left[len(lp):])
                b = int(right[len(rp):])
                refs.extend(f"{lp}{n:02d}" for n in range(min(a, b), max(a, b) + 1))
        else:
            refs.append(token)
    return [ref for ref in refs if ref in nodes]


def wrap_text(text, width=13, max_lines=4):
    text = re.sub(r"\s+", " ", text.strip())
    chunks = []
    current = ""
    for char in text:
        if char == " " and current:
            chunks.append(current)
            current = ""
            continue
        current += char
        if len(current) >= width:
            chunks.append(current)
            current = ""
    if current:
        chunks.append(current)
    return chunks[:max_lines] or [""]


def esc(value):
    return escape(str(value), quote=True)


nodes, order = parse_tables()
edges = set()
for ident, data in nodes.items():
    for dep in expand_refs(data["deps_text"], nodes):
        if dep != ident:
            edges.add((dep, ident, "dependency"))

for ids in order.values():
    for left, right in zip(ids, ids[1:]):
        edges.add((left, right, "order"))

cols = 12
node_w = 176
node_h = 84
x_gap = 18
left = 250
top = 120
group_gap = 46
group_layout = {}
y_cursor = top
for prefix, title, color in GROUPS:
    ids = order[prefix]
    row_count = max(1, math.ceil(len(ids) / cols))
    group_h = row_count * (node_h + 26) + 54
    group_layout[prefix] = {
        "title": title,
        "color": color,
        "ids": ids,
        "y": y_cursor,
        "h": group_h,
    }
    y_cursor += group_h + group_gap

width = left + cols * (node_w + x_gap) + 170
height = y_cursor + 90
positions = {}
for prefix, data in group_layout.items():
    for index, ident in enumerate(data["ids"]):
        row, col = divmod(index, cols)
        x = left + col * (node_w + x_gap)
        y = data["y"] + 38 + row * (node_h + 26)
        positions[ident] = (x, y)

def edge_path(source, target):
    sx, sy = positions[source]
    tx, ty = positions[target]
    sx += node_w / 2
    sy += node_h
    tx += node_w / 2
    if ty < sy:
        sx, sy = positions[source]
        tx, ty = positions[target]
        sx += node_w / 2
        sy += 2
        tx += node_w / 2
        ty += node_h
    middle = (sy + ty) / 2
    return f"M {sx:.1f},{sy:.1f} C {sx:.1f},{middle:.1f} {tx:.1f},{middle:.1f} {tx:.1f},{ty:.1f}"

svg = []
svg.append(f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" width="{width}" height="{height}" role="img" aria-label="Kervaire Lin Program concept dependency graph">')
svg.append("""<defs>
  <marker id="arrow" markerWidth="9" markerHeight="9" refX="8" refY="4.5" orient="auto">
    <path d="M0,0 L9,4.5 L0,9 z" fill="#64748b"/>
  </marker>
  <filter id="shadow" x="-20%" y="-20%" width="140%" height="140%">
    <feDropShadow dx="0" dy="2" stdDeviation="2" flood-opacity=".16"/>
  </filter>
</defs>""")
svg.append('<rect x="0" y="0" width="100%" height="100%" fill="#f8fafc"/>')
svg.append('<text x="40" y="48" font-size="27" font-family="sans-serif" font-weight="700" fill="#0f172a">Kervaire 论文中 Lin Program 依赖概念图</text>')
svg.append('<text x="40" y="78" font-size="15" font-family="sans-serif" fill="#475569">箭头表示数学依赖；虚线表示同一层表格中的声明顺序。可缩放、拖动和搜索。</text>')

for prefix, data in group_layout.items():
    y = data["y"]
    svg.append(f'<rect x="24" y="{y}" width="{width-48}" height="{data["h"]}" rx="18" fill="{data["color"]}" fill-opacity=".58" stroke="{data["color"]}" stroke-width="2"/>')
    svg.append(f'<text x="44" y="{y+27}" font-size="16" font-family="sans-serif" font-weight="700" fill="#1e293b">{esc(data["title"])}</text>')

for source, target, kind in sorted(edges):
    if source not in positions or target not in positions:
        continue
    d = edge_path(source, target)
    if kind == "order":
        svg.append(f'<path d="{d}" fill="none" stroke="#94a3b8" stroke-width="1" stroke-dasharray="4 5" opacity=".32"/>')
    else:
        svg.append(f'<path d="{d}" fill="none" stroke="#64748b" stroke-width="1.35" opacity=".42" marker-end="url(#arrow)"/>')

for ident, data in nodes.items():
    if ident not in positions:
        continue
    x, y = positions[ident]
    _, color = GROUP_BY_PREFIX[data["prefix"]]
    svg.append(f'<g class="node" data-id="{esc(ident)}" data-label="{esc(data["label"])}" tabindex="0">')
    svg.append(f'<rect x="{x}" y="{y}" width="{node_w}" height="{node_h}" rx="10" fill="#ffffff" stroke="{color}" stroke-width="2" filter="url(#shadow)"/>')
    svg.append(f'<text x="{x+10}" y="{y+19}" font-size="12" font-family="sans-serif" font-weight="700" fill="#334155">{esc(ident)}</text>')
    lines = wrap_text(data["label"])
    for line_no, line in enumerate(lines):
        svg.append(f'<text x="{x+10}" y="{y+38+line_no*14}" font-size="11.5" font-family="sans-serif" fill="#0f172a">{esc(line)}</text>')
    svg.append('</g>')
svg.append('</svg>')
svg_text = "\n".join(svg)
SVG_OUT.write_text(svg_text, encoding="utf-8")

html = f"""<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Kervaire / Lin Program 概念依赖图</title>
<style>
html,body {{ margin:0; height:100%; background:#0f172a; font-family:system-ui,-apple-system,"Segoe UI",sans-serif; }}
#toolbar {{ position:fixed; z-index:2; top:12px; left:12px; display:flex; gap:8px; align-items:center; padding:9px 11px; color:#e2e8f0; background:#1e293bee; border:1px solid #475569; border-radius:10px; box-shadow:0 8px 26px #0005; }}
button,input {{ font:inherit; border-radius:6px; border:1px solid #64748b; padding:5px 8px; }}
button {{ color:#e2e8f0; background:#334155; cursor:pointer; }}
input {{ width:220px; background:#f8fafc; color:#0f172a; }}
#viewport {{ height:100%; overflow:hidden; cursor:grab; }}
#viewport.dragging {{ cursor:grabbing; }}
#canvas {{ transform-origin:0 0; }}
svg {{ display:block; background:#f8fafc; }}
.node.found rect {{ stroke:#dc2626; stroke-width:4; }}
.node.dim {{ opacity:.17; }}
#count {{ color:#cbd5e1; font-size:12px; }}
</style>
</head>
<body>
<div id="toolbar">
  <button id="reset">重置视图</button><button id="in">放大</button><button id="out">缩小</button>
  <input id="search" placeholder="搜索节点编号或名称">
  <span id="count"></span>
</div>
<div id="viewport"><div id="canvas">{svg_text}</div></div>
<script>
const viewport = document.getElementById('viewport');
const canvas = document.getElementById('canvas');
const search = document.getElementById('search');
const nodes = [...document.querySelectorAll('.node')];
let scale = 1, ox = 0, oy = 0, dragging = false, px = 0, py = 0;
function apply() {{ canvas.style.transform = "translate(" + ox + "px," + oy + "px) scale(" + scale + ")"; }}
function zoom(factor, cx = innerWidth/2, cy = innerHeight/2) {{
  const before = (cx-ox)/scale; const beforeY = (cy-oy)/scale;
  scale = Math.min(2.8, Math.max(.12, scale*factor));
  ox = cx-before*scale; oy = cy-beforeY*scale; apply();
}}
document.getElementById('in').onclick=()=>zoom(1.25);
document.getElementById('out').onclick=()=>zoom(.8);
document.getElementById('reset').onclick=()=>{{ scale=1; ox=0; oy=0; apply(); }};
viewport.addEventListener('wheel', e=>{{ e.preventDefault(); zoom(e.deltaY<0?1.12:.89,e.clientX,e.clientY); }}, {{passive:false}});
viewport.addEventListener('pointerdown', e=>{{ dragging=true; px=e.clientX; py=e.clientY; viewport.classList.add('dragging'); viewport.setPointerCapture(e.pointerId); }});
viewport.addEventListener('pointermove', e=>{{ if(!dragging)return; ox+=e.clientX-px; oy+=e.clientY-py; px=e.clientX; py=e.clientY; apply(); }});
viewport.addEventListener('pointerup', ()=>{{ dragging=false; viewport.classList.remove('dragging'); }});
search.addEventListener('input', ()=>{{
  const q=search.value.trim().toLowerCase(); let found=0;
  nodes.forEach(n=>{{ const hit=!q || (n.dataset.id+" "+n.dataset.label).toLowerCase().includes(q);
    n.classList.toggle('found', !!q && hit); n.classList.toggle('dim', !!q && !hit); if(hit&&q)found++; }});
  document.getElementById('count').textContent=q ? (found+" 个匹配节点") : (nodes.length+" 个节点");
}});
document.getElementById('count').textContent=nodes.length+" 个节点";
</script>
</body>
</html>
"""
HTML_OUT.write_text(html, encoding="utf-8")
print(f"generated {len(nodes)} nodes, {len(edges)} edges")
print(SVG_OUT)
print(HTML_OUT)

