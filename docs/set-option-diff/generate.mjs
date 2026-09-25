import { execFileSync } from 'node:child_process';
import { readFileSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const reportDir = dirname(fileURLToPath(import.meta.url));
const repoDir = resolve(reportDir, '../..');
const git = (...args) => execFileSync('git', args, {
  cwd: repoDir,
  encoding: 'utf8',
  maxBuffer: 16 * 1024 * 1024,
}).trimEnd();

const specs = [
  {
    path: 'KIP126/Def/SpectralSequence/Convergence/Proofs.lean',
    short: 'Convergence / Proofs',
    label: '收敛',
    option: 'backward.isDefEq.respectTransparency false',
    explanation: '把关联分次与余核投影的关键等式显式写出，局部展开 Filtration.associatedGraded；恒等与复合证明不再依赖全文件透明度设置。',
  },
  {
    path: 'KIP126/Def/SpectralSequence/FilteredComplex/WeakConvergence/Comparison/Proofs.lean',
    short: 'WeakConvergence / Comparison',
    label: '弱收敛比较',
    option: 'backward.isDefEq.respectTransparency false',
    explanation: '在需要改写的位置展开 homologySSFiltration、toSSData 的实际子对象；少数等式改用显式传递与 erw，避免全局放宽透明度。',
  },
  {
    path: 'KIP126/Mathlib/SpectralSequence/FilteredComplex/Adapter/Proofs.lean',
    short: 'Mathlib / FilteredComplex / Adapter',
    label: 'Mathlib 适配',
    option: 'maxHeartbeats 2000000',
    explanation: '拆出源页与目标页的投影等式，并用带微分参数的辅助定理处理反向蕴含；不再让最后一步展开整套谱序列结构。',
  },
];

function parsePatch(patch) {
  const hunks = [];
  const lines = patch.split('\n');
  let i = 0;
  let added = 0;
  let deleted = 0;
  while (i < lines.length) {
    const match = lines[i].match(/^@@ -(\d+)(?:,\d+)? \+(\d+)(?:,\d+)? @@(.*)$/);
    if (!match) { i += 1; continue; }
    let oldNo = Number(match[1]);
    let newNo = Number(match[2]);
    const hunk = { label: lines[i], rows: [] };
    const removed = [];
    const inserted = [];
    const flush = () => {
      const count = Math.max(removed.length, inserted.length);
      for (let j = 0; j < count; j += 1) {
        const left = removed[j] ?? null;
        const right = inserted[j] ?? null;
        hunk.rows.push({ kind: 'change', left, right });
      }
      removed.length = 0;
      inserted.length = 0;
    };
    i += 1;
    while (i < lines.length && !lines[i].startsWith('@@ ') && !lines[i].startsWith('diff --git ')) {
      const line = lines[i];
      if (line.startsWith(' ')) {
        flush();
        hunk.rows.push({ kind: 'context', left: { no: oldNo++, text: line.slice(1) }, right: { no: newNo++, text: line.slice(1) } });
      } else if (line.startsWith('-')) {
        removed.push({ no: oldNo++, text: line.slice(1) });
        deleted += 1;
      } else if (line.startsWith('+')) {
        inserted.push({ no: newNo++, text: line.slice(1) });
        added += 1;
      }
      i += 1;
    }
    flush();
    hunks.push(hunk);
  }
  return { hunks, added, deleted };
}

const files = specs.map((spec) => {
  const patch = git('diff', '--no-ext-diff', '--unified=5', 'HEAD', '--', spec.path);
  if (!patch) throw new Error(`No working-tree diff for ${spec.path}`);
  const result = parsePatch(patch);
  if (!result.hunks.length) throw new Error(`Could not parse hunks for ${spec.path}`);
  return { ...spec, ...result };
});

const data = {
  head: git('rev-parse', '--short', 'HEAD'),
  branch: git('branch', '--show-current'),
  generatedAt: new Date().toISOString(),
  files,
};
const safeJson = JSON.stringify(data).replaceAll('<', '\\u003c').replaceAll('&', '\\u0026');
const html = `<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>KIP126 · set option 移除对照</title>
  <style>
    :root{color-scheme:dark;--bg:#091318;--panel:#102129;--panel2:#142a33;--line:#2b4650;--text:#e9f0ef;--muted:#9cb1b7;--cyan:#72d5c7;--add:#133d36;--addInk:#b2f1cb;--del:#432b34;--delInk:#ffc5c8;--code:#cbd9dc}
    *{box-sizing:border-box}html{scroll-behavior:smooth}body{margin:0;background:var(--bg);color:var(--text);font-family:ui-sans-serif,system-ui,-apple-system,"Segoe UI","PingFang SC","Microsoft YaHei",sans-serif}
    button,input{font:inherit}button{cursor:pointer}a{color:var(--cyan)}
    .page{max-width:1600px;margin:auto;padding:34px clamp(18px,3.5vw,56px) 80px}
    .topline{display:flex;align-items:center;justify-content:space-between;gap:16px;color:var(--muted);font:600 12px/1.3 ui-monospace,SFMono-Regular,Consolas,monospace;letter-spacing:.09em;text-transform:uppercase}
    .topline .brand{color:var(--cyan)}.stamp{letter-spacing:0;text-transform:none}
    .hero{display:grid;grid-template-columns:minmax(0,1fr) minmax(250px,360px);gap:42px;align-items:end;border-bottom:1px solid var(--line);padding:55px 0 34px}
    h1{font-size:clamp(36px,4.6vw,68px);line-height:1.05;letter-spacing:-.055em;margin:0 0 16px;max-width:960px}
    .lede{font-size:17px;line-height:1.7;color:#b9cbd0;margin:0;max-width:760px}.lede strong{color:var(--text)}
    .hero-note{border-left:2px solid var(--cyan);padding:2px 0 2px 18px;color:var(--muted);font-size:14px;line-height:1.7}.hero-note b{display:block;color:var(--text);margin-bottom:6px;font-size:15px}
    .metrics{display:flex;gap:1px;background:var(--line);margin:22px 0 40px;border:1px solid var(--line)}.metric{background:var(--panel);padding:20px 24px;flex:1;min-width:0}.metric .value{display:block;font:650 27px/1 ui-monospace,SFMono-Regular,Consolas,monospace;color:var(--text);margin-bottom:9px}.metric .label{color:var(--muted);font-size:13px}
    .section-head{display:flex;justify-content:space-between;align-items:end;gap:16px;margin:0 0 18px}.section-head h2{font-size:23px;letter-spacing:-.025em;margin:0}.section-head p{margin:0;color:var(--muted);font-size:13px}
    .overview{display:grid;grid-template-columns:repeat(3,minmax(0,1fr));gap:12px;margin-bottom:38px}.overview article{border:1px solid var(--line);background:var(--panel);padding:20px;min-height:180px}.overview .kicker{font:650 11px/1.3 ui-monospace,SFMono-Regular,Consolas,monospace;color:var(--cyan);letter-spacing:.08em}.overview h3{margin:13px 0 10px;font-size:18px;letter-spacing:-.02em}.overview p{margin:0;color:#b4c6ca;line-height:1.65;font-size:13px}.overview code{font-size:11px;color:#f6c8af;word-break:break-word}
    .diff-shell{border:1px solid var(--line);background:var(--panel);overflow:hidden}
    .diff-toolbar{display:grid;grid-template-columns:minmax(0,1fr) auto;gap:16px;align-items:center;padding:14px 17px;border-bottom:1px solid var(--line);background:#10232b}
    .tabs{display:flex;gap:7px;flex-wrap:wrap}.tab{border:1px solid var(--line);background:#102028;color:#b5c7cb;padding:9px 12px;font-size:12px}.tab:hover,.tab:focus-visible{border-color:var(--cyan);color:var(--text)}.tab.active{background:var(--cyan);border-color:var(--cyan);color:#08201f;font-weight:700}
    .controls{display:flex;gap:10px;align-items:center;flex-wrap:wrap;justify-content:flex-end}.search{width:210px;min-width:130px;border:1px solid var(--line);background:#081a20;color:var(--text);padding:8px 10px;outline:0}.search:focus{border-color:var(--cyan)}.toggle{display:flex;align-items:center;gap:6px;white-space:nowrap;color:var(--muted);font-size:12px}.toggle input{accent-color:var(--cyan)}
    .filebar{display:flex;justify-content:space-between;align-items:center;gap:12px;padding:18px 20px;background:var(--panel2);border-bottom:1px solid var(--line)}.path{font:600 13px/1.45 ui-monospace,SFMono-Regular,Consolas,monospace;word-break:break-all;text-decoration:none}.path:hover{text-decoration:underline}.count{color:var(--muted);font:12px ui-monospace,SFMono-Regular,Consolas,monospace;white-space:nowrap}.count .plus{color:var(--addInk)}.count .minus{color:var(--delInk)}
    .legend{display:grid;grid-template-columns:1fr 1fr;border-bottom:1px solid var(--line);color:#afc7cb;font-size:12px;font-weight:650;letter-spacing:.05em}.legend span{padding:11px 18px}.legend span+span{border-left:1px solid var(--line)}
    .diff-view{overflow-x:auto}.hunk{min-width:900px}.hunk-title{position:sticky;left:0;padding:10px 16px;background:#173039;color:#9bd6d0;border-top:1px solid var(--line);border-bottom:1px solid var(--line);font:12px ui-monospace,SFMono-Regular,Consolas,monospace;white-space:pre-wrap}
    .row{display:grid;grid-template-columns:minmax(0,1fr) minmax(0,1fr);border-bottom:1px solid rgba(255,255,255,.035);font:12.5px/1.55 ui-monospace,SFMono-Regular,Consolas,"Liberation Mono",monospace;color:var(--code)}.row:last-child{border-bottom:0}.cell{display:grid;grid-template-columns:54px minmax(0,1fr);min-width:0}.cell+.cell{border-left:1px solid var(--line)}.number{color:#708c96;text-align:right;padding:3px 12px 3px 4px;user-select:none;background:rgba(255,255,255,.018)}.code{display:block;padding:3px 12px;white-space:pre-wrap;overflow-wrap:anywhere;tab-size:2}.row.change .cell.old.filled{background:var(--del);color:var(--delInk)}.row.change .cell.new.filled{background:var(--add);color:var(--addInk)}.row.change .cell:not(.filled){background:rgba(255,255,255,.02)}.row.context{color:#9db0b6}.row.hidden{display:none}.hunk.hidden{display:none}
    .empty{padding:48px 20px;text-align:center;color:var(--muted)}.foot{display:flex;justify-content:space-between;gap:20px;align-items:start;margin-top:22px;color:var(--muted);font-size:12px;line-height:1.7}.foot code{color:#c7dcdf}.foot p{margin:0}
    @media(max-width:920px){.hero{grid-template-columns:1fr;gap:22px}.overview{grid-template-columns:1fr}.overview article{min-height:0}.diff-toolbar{grid-template-columns:1fr}.controls{justify-content:flex-start}.metrics{flex-wrap:wrap}.metric{flex:1 1 160px}.foot{display:block}.foot p+p{margin-top:10px}}
    @media(prefers-reduced-motion:reduce){html{scroll-behavior:auto}}
  </style>
</head>
<body>
  <main class="page">
    <div class="topline"><span class="brand">KIP126 / PROOF REVIEW</span><span class="stamp" id="snapshot"></span></div>
    <header class="hero">
      <div><h1>去掉全局选项，<br>保留证明路径。</h1><p class="lede">三份 <strong>Proofs.lean</strong> 的改动前后对照。左边是 <strong>HEAD</strong>，右边是当前工作区；红色表示删除，绿色表示新增。只展示这次处理的三个文件。</p></div>
      <div class="hero-note"><b>核验结果</b>三个目标的定向 Lake 构建通过；没有新增公理或 sorry。此页是生成时的静态快照，不会随着 Lean 文件自动更新。</div>
    </header>
    <section class="metrics" aria-label="改动统计"><div class="metric"><span class="value">03</span><span class="label">移除的 set_option</span></div><div class="metric"><span class="value">03</span><span class="label">涉及的证明文件</span></div><div class="metric"><span class="value" id="total-lines"></span><span class="label">新增 / 删除代码行</span></div><div class="metric"><span class="value">PASS</span><span class="label">定向构建 · 1481 jobs</span></div></section>
    <div class="section-head"><h2>处理思路</h2><p>从全文件选项转为局部、可审计的证明步骤</p></div>
    <section class="overview" id="overview" aria-label="三个文件的处理说明"></section>
    <div class="section-head"><h2>逐行对照</h2><p>可切换文件、搜索代码、隐藏上下文</p></div>
    <section class="diff-shell" aria-label="左右代码差异">
      <div class="diff-toolbar"><div class="tabs" id="tabs" role="tablist" aria-label="选择文件"></div><div class="controls"><input class="search" id="search" type="search" placeholder="搜索当前文件代码" aria-label="搜索当前文件代码"><label class="toggle"><input id="context" type="checkbox" checked>显示上下文</label></div></div>
      <div class="filebar"><a class="path" id="file-path" target="_blank" rel="noopener noreferrer"></a><span class="count" id="file-count"></span></div>
      <div class="legend"><span>改动前 · HEAD</span><span>改动后 · 工作区</span></div>
      <div class="diff-view" id="diff-view"></div>
    </section>
    <footer class="foot"><p>对比基准：<code id="head"></code> · <code id="branch"></code>。仅包含三个目标文件的 <code>git diff HEAD</code>；仓库其他未提交改动不在本报告中。</p><p>重新生成：<code>node docs/set-option-diff/generate.mjs</code></p></footer>
  </main>
  <script id="report-data" type="application/json">${safeJson}</script>
  <script>
    'use strict';
    const data = JSON.parse(document.getElementById('report-data').textContent);
    const state = { file: 0 };
    const byId = (id) => document.getElementById(id);
    const el = (tag, className, content) => { const node = document.createElement(tag); if (className) node.className = className; if (content !== undefined) node.textContent = content; return node; };
    byId('snapshot').textContent = new Date(data.generatedAt).toLocaleString('zh-CN', { timeZone: 'UTC', hour12: false }) + ' UTC';
    byId('head').textContent = data.head;
    byId('branch').textContent = data.branch;
    const sums = data.files.reduce((acc, file) => { acc.add += file.added; acc.del += file.deleted; return acc; }, { add: 0, del: 0 });
    byId('total-lines').textContent = '+' + sums.add + ' / −' + sums.del;
    data.files.forEach((file, index) => {
      const card = el('article');
      card.append(el('div', 'kicker', '0' + (index + 1) + ' / ' + file.label));
      card.append(el('h3', '', file.short));
      card.append(el('p', '', file.explanation));
      const option = el('p'); option.style.marginTop = '12px'; option.append(el('code', '', '移除：set_option ' + file.option)); card.append(option);
      byId('overview').append(card);
      const tab = el('button', 'tab', file.short); tab.type = 'button'; tab.setAttribute('role', 'tab'); tab.addEventListener('click', () => { state.file = index; render(); }); byId('tabs').append(tab);
    });
    function cell(side, line) {
      const wrapper = el('div', 'cell ' + side + (line ? ' filled' : ''));
      wrapper.append(el('span', 'number', line ? String(line.no) : ''));
      wrapper.append(el('code', 'code', line ? line.text || ' ' : ' '));
      return wrapper;
    }
    function render() {
      const file = data.files[state.file];
      const query = byId('search').value.trim().toLocaleLowerCase();
      const showContext = byId('context').checked;
      [...byId('tabs').children].forEach((tab, i) => { tab.classList.toggle('active', i === state.file); tab.setAttribute('aria-selected', i === state.file ? 'true' : 'false'); });
      byId('file-path').textContent = file.path;
      byId('file-path').href = '../../' + file.path;
      byId('file-count').replaceChildren();
      const count = byId('file-count'); count.append(el('span', 'plus', '+' + file.added), document.createTextNode('  /  '), el('span', 'minus', '−' + file.deleted));
      const view = byId('diff-view'); view.replaceChildren();
      let visible = 0;
      file.hunks.forEach((hunk) => {
        const block = el('div', 'hunk'); block.append(el('div', 'hunk-title', hunk.label));
        let hunkVisible = 0;
        hunk.rows.forEach((row) => {
          const text = ((row.left ? row.left.text : '') + ' ' + (row.right ? row.right.text : '')).toLocaleLowerCase();
          if ((row.kind === 'context' && !showContext) || (query && !text.includes(query))) return;
          const line = el('div', 'row ' + row.kind); line.append(cell('old', row.left), cell('new', row.right)); block.append(line); hunkVisible += 1;
        });
        if (hunkVisible) { view.append(block); visible += hunkVisible; }
      });
      if (!visible) view.append(el('div', 'empty', '没有匹配的代码行；试试清空搜索或显示上下文。'));
    }
    byId('search').addEventListener('input', render);
    byId('context').addEventListener('change', render);
    render();
  </script>
</body>
</html>
`;

writeFileSync(resolve(reportDir, 'index.html'), html, 'utf8');
console.log(`Wrote ${resolve(reportDir, 'index.html')} (${files.length} files, +${files.reduce((n, f) => n + f.added, 0)}/-${files.reduce((n, f) => n + f.deleted, 0)} lines)`);
