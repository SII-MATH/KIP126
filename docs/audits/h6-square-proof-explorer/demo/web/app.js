const katex = window.katex;

const $ = selector => document.querySelector(selector);
const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
const arr = value => value == null ? [] : Array.isArray(value) ? value : [value];
const textOf = value => typeof value === 'string' ? value : value == null ? '' : JSON.stringify(value, null, 2);
const safeURL = value => /^(https?:\/\/|#|\.\.?\/)/.test(value || '') ? esc(value) : '#';
const statusInfo = {
  passed: ['green', 'Checker 通过'],
  not_found: ['yellow', 'Searcher 未找到'],
  failed: ['red', 'Checker 不通过'],
  incomplete: ['gray', '核查未完成'],
  pending: ['gray', '待核查'],
};
const reviewInfo = {approved:'Judger 已审查', approved_with_limitations:'Judger 已审查 · 有范围限制', gap:'Judger 记录数学缺口', pending:'数学审查待完成'};
const checkerInfo = {passed:'通过', rejected:'未通过', not_applicable:'未进行候选语义核查', pending:'待核查'};
let data, depMap, stepMap, chapters, currentChapter = 0, currentStep = '', drawerReturnFocus = null;
let dependencyFilters = {query:'', status:'', category:''};

function semantic(dep) { return statusInfo[dep?.semantic_status] || statusInfo.pending; }
function badge(dep) { const [color,label] = semantic(dep); return `<span class="status ${color}">${label}</span>`; }
function proofBadges(dep) { return arr(dep.proof_status).map(value => `<span class="proof-state">${esc(textOf(value))}</span>`).join('') || '<span class="proof-state">证明状态未记录</span>'; }
function depRef(id, stepId) {
  const dep = depMap.get(id);
  if (!dep) return `<span class="ref-tag gray" title="数据缺少对应记录">${esc(id)} · 记录缺失</span>`;
  const [color,label] = semantic(dep);
  return `<a class="ref-tag ${color}" href="#dependency/${esc(id)}?from=${esc(stepId || '')}" aria-label="${esc(id)} ${esc(dep.name)}，${label}"><b>${esc(id)}</b><span>${label}</span></a>`;
}

// A small, escaped Markdown reader. Math tokens are protected before formatting.
// Only prose supplied in explorer.json is rendered here; no proof text is generated.
function markdown(value, stepId = '') {
  let source = textOf(value), tokens = [];
  const save = html => `\uE000${tokens.push(html)-1}\uE001`;
  source = source.replace(/```([^\n]*)\n([\s\S]*?)```/g, (_,lang,code) => save(`<pre><code>${esc(code.trim())}</code></pre>`));
  source = source.replace(/\$\$([\s\S]*?)\$\$|\\\[([\s\S]*?)\\\]|\\\(([\s\S]*?)\\\)|(?<!\\)\$([^$\n]+?)\$/g, (match,display1,display2,inline1,inline2) => {
    const display = display1 !== undefined || display2 !== undefined;
    const tex = display1 ?? display2 ?? inline1 ?? inline2;
    let html;
    try {
      html = katex.renderToString(tex, {displayMode:display,throwOnError:false,strict:'ignore',trust:false,macros:{'\\AF':'\\operatorname{AF}','\\Ext':'\\operatorname{Ext}','\\F':'\\mathbb{F}','\\Z':'\\mathbb{Z}','\\HF':'H\\mathbb{F}_2',...data?.metadata?.katex_macros}});
    } catch (error) { html = `<code class="katex-error" title="${esc(error.message)}">${esc(match)}</code>`; }
    return save(`<span class="${display ? 'math-block' : 'math-inline'}">${html}</span>`);
  });
  source = source.replace(/`([^`]+)`/g, (_,code) => save(`<code class="inline-code">${esc(code)}</code>`));
  source = esc(source);
  source = source.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
  source = source.replace(/\[([^\]]+)\]\((https?:\/\/[^\s)]+|#[^\s)]+)\)/g, (_,label,url) => `<a href="${safeURL(url)}" target="_blank" rel="noopener">${label}</a>`);
  if (stepId) source = source.replace(/\[\[(EXT-\d+)\]\]|\b(EXT-\d+)\b/g, (_,a,b) => save(depRef(a || b, stepId)));
  const blocks = source.split(/\n\s*\n/).filter(Boolean).map(block => {
    if (/^#{1,4} /.test(block)) return `<h4>${block.replace(/^#{1,4} /,'')}</h4>`;
    if (block.split('\n').every(line => /^\s*[-*] /.test(line))) return `<ul>${block.split('\n').map(line => `<li>${line.replace(/^\s*[-*] /,'')}</li>`).join('')}</ul>`;
    if (block.split('\n').every(line => /^\s*\d+[.)] /.test(line))) return `<ol>${block.split('\n').map(line => `<li>${line.replace(/^\s*\d+[.)] /,'')}</li>`).join('')}</ol>`;
    if (block.startsWith('&gt;')) return `<blockquote>${block.replace(/^&gt; ?/gm,'').replace(/\n/g,'<br>')}</blockquote>`;
    return `<p>${block.replace(/\n/g,'<br>')}</p>`;
  });
  return blocks.join('\n').replace(/\uE000(\d+)\uE001/g, (_,index) => tokens[Number(index)]);
}

function referenceIDs(step) {
  const occurrences = [...textOf(step.body).matchAll(/\[\[(EXT-\d+)\]\]|\b(EXT-\d+)\b/g)].map(match => match[1] || match[2]);
  return [...occurrences, ...arr(step.dependencies).filter(id => !occurrences.includes(id))];
}
function stats() {
  const deps = [...depMap.values()], counts = {passed:0,not_found:0,failed:0,pending:0};
  deps.forEach(dep => counts[dep.semantic_status in counts ? dep.semantic_status : 'pending']++);
  return {...counts,total:deps.length,refs:data.steps.reduce((sum,step) => sum + referenceIDs(step).length,0),rounds:deps.reduce((sum,dep) => sum + arr(dep.rounds).length,0)};
}
function countsHTML() { const s = stats(); return `<div class="result-counts"><span class="status green">Checker 通过 <b>${s.passed}</b></span><span class="status yellow">Searcher 未找到 <b>${s.not_found}</b></span><span class="status red">Checker 不通过 <b>${s.failed}</b></span><span class="status gray">待核查／核查未完成 <b>${s.pending}</b></span></div>`; }
function metricsHTML() { const s = stats(); return `<div class="metrics"><div class="metric"><strong>${data.steps.length}</strong><span>本片段证明步骤</span></div><div class="metric"><strong>${s.total}</strong><span>去重外部依赖</span></div><div class="metric"><strong>${s.refs}</strong><span>正文引用出现次数</span></div><div class="metric"><strong>${s.rounds}</strong><span>检索核查轮次</span></div></div>`; }
function legendHTML(open = false) { return `<details class="legend" ${open ? 'open' : ''}><summary>如何理解随文标签</summary><p class="legend-text">这些颜色表示 Lean 对应核查结果，不表示论文证明本身正确或错误，也不表示相应命题已经完成形式化证明。</p><div class="legend-rows"><div><span class="status green">Checker 通过</span><span>已找到语义对应通过的形式化表达。</span></div><div><span class="status yellow">Searcher 未找到</span><span>在已记录的检索范围内未找到可供核查的对应候选。</span></div><div><span class="status red">Checker 不通过</span><span>找到过候选，但经过三轮协作仍没有候选通过核查。</span></div><div><span class="status gray">待核查／核查未完成</span><span>尚未完成规定流程；具体原因保留在依赖详情中。</span></div></div><p>形式化证明状态另列独立徽标。Judger 的数学审查与 Lean 对应核查分别记录。</p></details>`; }
function paperLabel(item) { return [item.path || item.file, item.label, item.lines ? `L${arr(item.lines).join('–')}` : item.line ? `L${item.line}` : '', item.locator].filter(Boolean).join(' · '); }
function paperMini(step) { return arr(step.paper).map(item => `<span class="source-mini">${esc(paperLabel(item))}</span>`).join(''); }
function sourceHTML(item) {
  if (typeof item === 'string') return `<div class="source-item">${esc(item)}</div>`;
  const excerpt = item.excerpt || item.source_excerpt || item.text || item.content;
  return `<div class="source-item">${item.name || item.title ? `<div class="source-title">${esc(item.name || item.title)}</div>` : ''}<div>${esc(paperLabel(item))}</div>${item.declaration ? `<div>${esc(item.declaration)}</div>` : ''}${item.url ? `<a href="${safeURL(item.url)}" target="_blank" rel="noopener">查看原始来源 ↗</a>` : ''}${item.verified !== undefined ? `<div class="muted">${item.verified ? '来源已查阅／核实' : '来源核实状态：未核实或仅有间接定位'}</div>` : ''}${item.note || item.notes ? `<div>${esc(textOf(item.note || item.notes))}</div>` : ''}${excerpt ? `<details><summary>查看来源摘录</summary><pre>${esc(textOf(excerpt))}</pre></details>` : ''}</div>`;
}
function notesHTML(values) { return arr(values).length ? `<ul>${arr(values).map(value => `<li>${markdown(value)}</li>`).join('')}</ul>` : ''; }

function issueGroups() {
  const result = {math:[],formal:[],other:[]};
  if (Array.isArray(data.issues)) {
    data.issues.forEach(issue => {
      const kind = issue.kind || issue.category || issue.type || issue.side || '';
      const target = /math|数学|judger|内部上游/i.test(kind) ? 'math' : /formal|lean|对应|checker/i.test(kind) ? 'formal' : 'other';
      result[target].push(typeof issue === 'string' ? {title:issue} : issue);
    });
  } else if (data.issues) {
    Object.entries(data.issues).forEach(([key,values]) => {
      const target = /math|数学|judger/i.test(key) ? 'math' : /formal|lean|对应|checker/i.test(key) ? 'formal' : 'other';
      result[target].push(...arr(values).map(value => typeof value === 'string' ? {title:value} : value));
    });
  }
  if (!result.math.length) data.steps.forEach(step => arr(step.review?.gaps).forEach(gap => result.math.push({title:typeof gap === 'string' ? gap : gap.title || '数学审查记录',description:typeof gap === 'string' ? '' : gap.description,steps:[step.id]})));
  if (!result.formal.length) [...depMap.values()].filter(dep => dep.semantic_status !== 'passed').forEach(dep => result.formal.push({title:`${dep.id} · ${dep.name}`,description:arr(dep.limitations).join('\n\n') || `对应状态：${semantic(dep)[1]}；请查看逐轮核查的具体理由。`,dependencies:[dep.id]}));
  return result;
}
function renderNav(view) {
  document.querySelectorAll('[data-view]').forEach(link => link.setAttribute('aria-current',link.dataset.view === view ? 'page' : 'false'));
  $('#dependency-count').textContent = depMap.size;
  const groups = issueGroups(); $('#issue-count').textContent = Object.values(groups).reduce((sum,items) => sum + items.length,0);
  $('#chapters').innerHTML = chapters.map((chapter,index) => `<div><a class="chapter-item ${index===currentChapter&&view==='proof'?'active':''}" href="#proof/${chapter.steps[0].id}"><span>${String(index+1).padStart(2,'0')}</span><span>${esc(chapter.title)}</span></a>${index===currentChapter&&view==='proof' ? `<div class="chapter-steps">${chapter.steps.map(step => `<a href="#proof/${step.id}">${esc(step.id)} · ${esc(step.title)}</a>`).join('')}</div>` : ''}</div>`).join('');
}
function renderProof(stepId) {
  if (stepId && stepMap.has(stepId)) { currentStep=stepId; currentChapter=chapters.findIndex(chapter => chapter.steps.some(step => step.id===stepId)); }
  if (!chapters.length) { $('#main').innerHTML='<div class="empty">目前没有已交接的正文数据。不会使用虚构的数学内容填充。</div>'; return; }
  const chapter = chapters[currentChapter]; currentStep ||= chapter.steps[0].id;
  const meta = data.metadata || {};
  $('#location').textContent=`正文阅读 / ${chapter.title} / ${currentChapter+1} of ${chapters.length}`;
  $('#main').innerHTML = `<section class="hero"><div class="eyebrow">A local proof explorer · DEMO 01</div><h1>${esc(meta.title || 'θ₅ 的选择，为什么不改变平方首项？')}</h1><div class="subtitle">${markdown(meta.subtitle || meta.summary || '沿着论文的一小段证明，逐步阅读数学推导，并在用到外部输入的位置查看 Lean 对应核查。')}</div><div class="demo-notice">${markdown(meta.boundary || meta.scope_description || '本页仅展示 Lemma lem:equistate4 的短引理片段，不是 h₆² 永久存活的完整证明。')}</div><div class="hero-meta"><span class="tiny-pill">论文片段 · ${esc(meta.paper_label || 'lem:equistate4')}</span><span class="tiny-pill">数学审查与 Lean 核查独立呈现</span></div>${metricsHTML()}</section><div class="reading-heading"><strong>CHAPTER ${String(currentChapter+1).padStart(2,'0')}</strong><span>点击正文中的 EXT 标签，打开右侧批注</span></div><h2 class="chapter-title">${esc(chapter.title)}</h2><div class="proof-card">${chapter.steps.map(stepHTML).join('')}</div><nav class="page-nav" aria-label="章节翻页"><button data-page="${currentChapter-1}" ${currentChapter===0?'disabled':''}>← 上一章</button><span>第 ${currentChapter+1} / ${chapters.length} 章 · ${chapter.steps.length} 个步骤</span><button data-page="${currentChapter+1}" ${currentChapter===chapters.length-1?'disabled':''}>下一章 →</button></nav>${countsHTML()}${legendHTML()}`;
  renderNav('proof');
}
function stepHTML(step) {
  const refs = [...textOf(step.body).matchAll(/\[\[(EXT-\d+)\]\]|\b(EXT-\d+)\b/g)].map(match=>match[1]||match[2]);
  const extraRefs=arr(step.dependencies).filter(id=>!refs.includes(id));
  return `<article class="proof-step" id="${esc(step.id)}"><div class="step-heading"><a class="step-number" href="#proof/${esc(step.id)}" aria-label="${esc(step.id)} 稳定锚点">${esc(step.id)}</a><h3>${esc(step.title)}</h3><span class="step-tools">${step.kind==='supplementary' ? '补充推导' : '论文论证'}</span></div><div class="proof-body">${markdown(step.body,step.id)}</div>${extraRefs.length ? `<p>${extraRefs.map(id=>depRef(id,step.id)).join('')}</p>`:''}${arr(step.prerequisites).length?`<div class="prerequisites">前置步骤 ${step.prerequisites.map(id=>`<a href="#proof/${esc(id)}">${esc(id)}</a>`).join('')}</div>`:''}${arr(step.review?.gaps).map(gap=>`<div class="math-warning"><b>数学审查提示</b><br>${markdown(gap)}</div>`).join('')}<details class="review-summary"><summary>${esc(reviewInfo[step.review?.status] || step.review?.status || '数学审查状态未记录')} · 查看审查意见</summary><div class="review-note">${notesHTML(step.review?.notes) || '未提供其他审查说明。'}${step.review?.reviewer?`<p>审查者：${esc(step.review.reviewer)}</p>`:''}</div></details><div class="step-footer">${paperMini(step)}</div></article>`;
}
function renderDependencies() {
  $('#location').textContent='外部依赖 / 固定命题与对应核查';
  const categories=[...new Set([...depMap.values()].map(dep=>dep.category).filter(Boolean))];
  $('#main').innerHTML=`<div class="eyebrow">External dependencies</div><h1>每一项输入，都有来处。</h1><p class="subtitle">按固定的数学命题逐项查看原始来源、Lean 候选和 Checker 的核查理由。颜色只描述对应核查，独立徽标记录形式化证明状态。</p>${metricsHTML()}${countsHTML()}<div class="filters"><input type="search" id="dependency-search" aria-label="搜索依赖" placeholder="搜索编号、命题、声明名…" value="${esc(dependencyFilters.query)}"><select id="status-filter" aria-label="按对应核查状态筛选"><option value="">全部核查状态</option><option value="passed">Checker 通过</option><option value="not_found">Searcher 未找到</option><option value="failed">Checker 不通过</option><option value="pending">待核查／核查未完成</option></select><select id="category-filter" aria-label="按依赖类别筛选"><option value="">全部依赖类别</option>${categories.map(category=>`<option value="${esc(category)}">${esc(category)}</option>`).join('')}</select></div><div id="filter-result" class="filter-result" role="status" aria-live="polite"></div><div id="dependency-list" class="dependency-list"></div>${legendHTML(true)}`;
  $('#status-filter').value=dependencyFilters.status; $('#category-filter').value=dependencyFilters.category;
  $('#dependency-search').addEventListener('input',event=>{dependencyFilters.query=event.target.value;renderDependencyList();});
  $('#status-filter').addEventListener('change',event=>{dependencyFilters.status=event.target.value;renderDependencyList();});
  $('#category-filter').addEventListener('change',event=>{dependencyFilters.category=event.target.value;renderDependencyList();});
  renderDependencyList(); renderNav('dependencies');
}
function renderDependencyList() {
  const items=[...depMap.values()].filter(dep=>{
    const query=dependencyFilters.query.trim().toLowerCase();
    const matchesQuery = !query || (/^ext-\d+$/i.test(query) ? dep.id.toLowerCase() === query : JSON.stringify(dep).toLowerCase().includes(query));
    return matchesQuery && (!dependencyFilters.category || dep.category===dependencyFilters.category) && (!dependencyFilters.status || (dependencyFilters.status==='pending' ? ['pending','incomplete',undefined].includes(dep.semantic_status) : dep.semantic_status===dependencyFilters.status));
  });
  $('#filter-result').textContent=`显示 ${items.length} / ${depMap.size} 项去重外部依赖`;
  $('#dependency-list').innerHTML=items.map(dep=>`<article class="dependency-card"><div class="dep-heading"><div><span class="dep-id">${esc(dep.id)} · v${esc(dep.version || 1)}</span><span class="dep-category">${esc(dep.category)}</span><h3><a href="#dependency/${esc(dep.id)}?return=dependencies">${esc(dep.name)}</a></h3></div>${badge(dep)}</div><div>${proofBadges(dep)}</div><div class="dep-excerpt">${markdown(dep.summary || dep.statement)}</div><div class="dep-footer"><span>用于 ${arr(dep.used_in).length} 个步骤 · ${arr(dep.rounds).length} 轮核查</span><a class="text-link" href="#dependency/${esc(dep.id)}?return=dependencies">查看命题与核查详情 →</a></div></article>`).join('') || '<div class="empty">没有符合筛选条件的依赖。可更换关键词或筛选条件。</div>';
}
function issueHTML(issue,kind) {
  const stepIDs=arr(issue.steps || issue.step_ids || issue.step || issue.step_id), dependencyIDs=arr(issue.dependencies || issue.dependency_ids || issue.dependency || issue.dependency_id);
  return `<article class="issue-card"><div class="issue-label">${kind==='math'?'数学侧 · Judger':kind==='formal'?'形式化侧 · 对应核查':'范围与执行限制'}${issue.id?` · ${esc(issue.id)}`:''}${issue.status?` · ${esc(issue.status)}`:''}</div><h3>${esc(issue.title || issue.name || '审查记录')}</h3><div class="proof-body">${markdown(issue.description || issue.body || issue.detail || issue.message || issue.reason || '')}</div>${issue.impact?`<p><b>影响范围：</b>${esc(textOf(issue.impact))}</p>`:''}${issue.resolution?`<p><b>处理记录：</b>${esc(textOf(issue.resolution))}</p>`:''}<div class="issue-links">${stepIDs.map(id=>`<a href="#proof/${esc(id)}">阅读 ${esc(id)} →</a>`).join('')}${dependencyIDs.map(id=>`<a href="#dependency/${esc(id)}?return=issues">查看 ${esc(id)} →</a>`).join('')}</div></article>`;
}
function renderIssues() {
  const groups=issueGroups();
  $('#location').textContent='数学审查与问题 / 两条审查流程分别呈现';
  $('#main').innerHTML=`<div class="eyebrow">Review & open questions</div><h1>把尚未解决的事写清楚。</h1><p class="subtitle">数学侧记录论证本身的缺口及范围；形式化侧记录 Lean 候选的对应问题。仓库对应核查未通过，不代表论文证明有误。</p><h2 class="issue-group-title">数学审查与论证范围</h2>${groups.math.length?groups.math.map(issue=>issueHTML(issue,'math')).join(''):'<div class="empty">当前数据未记录未解决的数学缺口。各步骤的具体审查意见仍可在正文展开。</div>'}<h2 class="issue-group-title">Lean 对应与证明状态限制</h2>${groups.formal.length?groups.formal.map(issue=>issueHTML(issue,'formal')).join(''):'<div class="empty">当前数据未记录额外的形式化侧问题。证明状态以每项依赖的独立徽标为准。</div>'}${groups.other.length?`<h2 class="issue-group-title">材料与执行限制</h2>${groups.other.map(issue=>issueHTML(issue,'other')).join('')}`:''}${legendHTML()}`;
  renderNav('issues');
}
function candidateHTML(candidate) {
  return `<div class="source-item"><div class="candidate-name">${esc(candidate.name || candidate.declaration || '未命名候选')}</div><div>${esc(candidate.kind || '')} · ${esc(candidate.path || '')}${candidate.line?`:${esc(candidate.line)}`:''}</div>${candidate.mapping?`<p>${markdown(candidate.mapping)}</p>`:''}<details><summary>完整类型与必要上下文</summary>${candidate.type?`<pre>${esc(candidate.type)}</pre>`:'<p>未提供完整类型。</p>'}${candidate.context?`<h4>上下文</h4><pre>${esc(textOf(candidate.context))}</pre>`:''}${arr(candidate.definitions).length?`<h4>相关定义</h4>${arr(candidate.definitions).map(definition=>typeof definition==='string'?`<pre>${esc(definition)}</pre>`:sourceHTML({...definition,excerpt:definition.excerpt || definition.type || definition.body || textOf(definition)})).join('')}`:''}${candidate.excerpt?`<h4>源码摘录</h4><pre>${esc(candidate.excerpt)}</pre>`:''}</details></div>`;
}
function roundHTML(round,index) {
  const search=round.search || {},checker=round.checker || {};
  return `<details class="round" ${index===0?'open':''}><summary><span>第 ${esc(round.round || index+1)} 轮 · 命题 v${esc(round.dependency_version || '?')}</span><span>${esc(checkerInfo[checker.status] || checker.status || '未记录核查状态')}</span></summary><h4>检索范围</h4>${notesHTML(search.scope) || '<p>未记录。</p>'}<h4>检索关键词与操作</h4>${notesHTML(search.queries) || '<p>未记录。</p>'}${notesHTML(search.notes)}<h4>提交候选 · ${arr(round.candidates).length} 项</h4>${arr(round.candidates).map(candidateHTML).join('') || '<p>本轮未提交可供语义核查的候选。</p>'}<h4>Checker 的核查结论与理由</h4><div>${markdown(checker.reason || '未记录 Checker 的语义核查理由。')}</div>${arr(checker.differences).length?`<h4>具体差异或缺失证据</h4>${notesHTML(checker.differences)}`:''}${arr(checker.next_search).length?`<h4>下一轮检索方向</h4>${notesHTML(checker.next_search)}`:''}${round.evidence?`<h4>本轮检查证据</h4>${arr(round.evidence).map(sourceHTML).join('')}`:''}</details>`;
}
function openDependency(id,params) {
  const dep=depMap.get(id);
  if (!dep) { $('#main').innerHTML=`<div class="empty">没有找到依赖 ${esc(id)}。<br><a href="#dependencies">返回外部依赖总览</a></div>`; return; }
  const from=params.get('from') || currentStep || arr(dep.used_in)[0] || '';
  const returnView=params.get('return');
  if (returnView==='dependencies') renderDependencies(); else if (returnView==='issues') renderIssues(); else renderProof(from);
  const declarationCandidates=arr(dep.rounds).flatMap(round=>arr(round.candidates));
  $('#drawer-content').innerHTML=`<div class="dep-id">${esc(dep.id)} · 命题版本 ${esc(dep.version || 1)}<span class="dep-category">${esc(dep.category)}</span></div><h2>${esc(dep.name)}</h2>${badge(dep)}<div class="small-notice">颜色只表示 Lean 语义对应结果；形式化证明状态单独列在下方。</div><div>${proofBadges(dep)}</div><section class="drawer-section"><h3>论文实际使用的数学命题</h3><div class="proof-body">${markdown(dep.statement)}</div><div class="small-notice">${esc(reviewInfo[dep.review?.status] || dep.review?.status || '数学侧审查状态未记录')}${notesHTML(dep.review?.notes)}</div></section><section class="drawer-section"><h3>使用位置 · 返回正文</h3><div class="used-links">${arr(dep.used_in).map(stepId=>`<a href="#proof/${esc(stepId)}">${esc(stepId)}${stepMap.has(stepId)?` · ${esc(stepMap.get(stepId).title)}`:''} ↗</a>`).join('') || '未记录使用步骤。'}</div>${arr(dep.paper).map(sourceHTML).join('')}</section><section class="drawer-section"><h3>原始来源与可核对摘录</h3>${arr(dep.sources).map(sourceHTML).join('') || '<p>当前数据未提供原始来源记录。</p>'}</section>${dep.checker_summary || dep.correspondence ? `<section class="drawer-section"><h3>对应核查说明</h3>${markdown(dep.checker_summary || dep.correspondence)}</section>`:''}<section class="drawer-section"><h3>Lean 候选与逐轮检索核查</h3><p>${arr(dep.rounds).length} 轮实际记录 · ${declarationCandidates.length} 次候选提交。各轮保留检索范围、完整类型、上下文和 Checker 的理由。</p>${arr(dep.rounds).map(roundHTML).join('') || '<div class="small-notice">没有已完成的检索核查轮次；此处不会填造记录。</div>'}</section><section class="drawer-section"><h3>形式化证明状态与检查证据</h3><div>${proofBadges(dep)}</div>${arr(dep.evidence).map(item=>typeof item==='string'?`<p>${markdown(item)}</p>`:sourceHTML(item)).join('') || '<p>当前数据未记录额外执行证据。</p>'}</section>${arr(dep.limitations).length?`<section class="drawer-section"><h3>未解决问题与限制</h3>${notesHTML(dep.limitations)}</section>`:''}<div class="footer-actions"><a class="outline-button" href="#dependencies">全部外部依赖 →</a><a class="outline-button" href="#issues">数学审查与问题 →</a></div>`;
  $('#drawer').classList.add('open'); $('#drawer').setAttribute('aria-hidden','false'); $('#drawer').inert=false; $('#drawer-shade').hidden=false; document.body.classList.add('drawer-open');
  $('#drawer-content').scrollTop=0;
  drawerReturnFocus=document.activeElement;
  $('#close-drawer').focus({preventScroll:true});
}
function hideDrawer() { $('#drawer').classList.remove('open');$('#drawer').setAttribute('aria-hidden','true');$('#drawer').inert=true;$('#drawer-shade').hidden=true;document.body.classList.remove('drawer-open'); }
function closeDrawer() {
  const params=new URLSearchParams(location.hash.split('?')[1] || '');
  location.hash=params.get('return') || `proof/${params.get('from') || currentStep || ''}`;
  if (drawerReturnFocus?.isConnected) drawerReturnFocus.focus({preventScroll:true});
}
function route() {
  if (!data) return;
  const [path,query='']=location.hash.slice(1).split('?'), [view,id]=path.split('/');
  hideDrawer();
  if (view==='dependency') {openDependency(decodeURIComponent(id || ''),new URLSearchParams(query));return;}
  if (view==='dependencies') renderDependencies(); else if(view==='issues') renderIssues(); else renderProof(id);
  if (view==='proof' && id && stepMap.has(id)) {
    requestAnimationFrame(()=>{const step=document.getElementById(id);if(step){step.scrollIntoView({block:'start',behavior:'instant'});step.classList.add('focus-flash');}});
  } else window.scrollTo({top:0,behavior:'instant'});
}
document.addEventListener('click',event=>{
  const pageButton=event.target.closest('[data-page]');
  if (pageButton && !pageButton.disabled) {const index=Number(pageButton.dataset.page);if(chapters[index])location.hash=`proof/${chapters[index].steps[0].id}`;}
});
$('#close-drawer').addEventListener('click',closeDrawer); $('#drawer-shade').addEventListener('click',closeDrawer);
document.addEventListener('keydown',event=>{if(event.key==='Escape' && $('#drawer').classList.contains('open'))closeDrawer();});
window.addEventListener('hashchange',route);

async function init() {
  try {
    if (window.EXPLORER_DATA) data=window.EXPLORER_DATA;
    else {
      const response=await fetch('../data/explorer.json',{cache:'no-store'});
      if(!response.ok)throw new Error(`explorer.json 尚不可用（HTTP ${response.status}）`);
      data=await response.json();
    }
    data.steps=arr(data.steps);data.dependencies=arr(data.dependencies);
    depMap=new Map(data.dependencies.map(dep=>[dep.id,dep]));stepMap=new Map(data.steps.map(step=>[step.id,step]));
    const invalid=[];
    if(depMap.size!==data.dependencies.length)invalid.push('存在重复外部依赖编号');
    if(stepMap.size!==data.steps.length)invalid.push('存在重复步骤编号');
    data.steps.forEach(step=>arr(step.dependencies).forEach(id=>{if(!depMap.has(id))invalid.push(`${step.id} 引用了缺失的 ${id}`);}));
    if(invalid.length)throw new Error(`数据一致性检查未通过：${invalid.join('；')}`);
    chapters=[];
    data.steps.forEach(step=>{const title=step.chapter || '证明片段';let chapter=chapters.find(item=>item.title===title);if(!chapter){chapter={title,steps:[]};chapters.push(chapter);}chapter.steps.push(step);});
    const meta=data.metadata || {};document.title=`${meta.title || 'θ₅ 的选择与平方首项'} · 证明阅读室`;
    const commit=meta.repository_commit || meta.commit;
    $('#provenance').innerHTML=`本地数据快照${commit?` · Git ${esc(String(commit).slice(0,12))}`:''}${meta.paper_file?` · ${esc(meta.paper_file)}`:''}${meta.paper_lines?`:${esc(arr(meta.paper_lines).join('–'))}`:''}<br>正文、随文标签、详情与统计均读取同一份 explorer.json。公式使用随页面提供的本地 KaTeX 资源。`;
    route();
    // Exposed read-only summaries make browser/data consistency checks reproducible.
    window.proofExplorer=Object.freeze({statistics:stats(),chapters:chapters.map(chapter=>chapter.title),dependencyIds:[...depMap.keys()],stepIds:[...stepMap.keys()]});
  } catch(error) {
    $('#location').textContent='本地证明数据尚未就绪';
    $('#main').innerHTML=`<div class="eyebrow">Proof reading room · Demo</div><h1>等待真实的证明与审查数据</h1><div class="empty">${esc(error.message)}<br>页面不会使用虚构的数学内容或核查状态填充。<br>请通过 <code>python3 serve.py</code> 启动本地服务后访问页面。</div>`;
    console.error(error);
  }
}
init();
