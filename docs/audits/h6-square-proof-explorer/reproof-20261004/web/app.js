/* A presentation-only reader. Mathematical prose comes exclusively from data/math.json. */
(() => {
  'use strict';
  const $ = selector => document.querySelector(selector);
  const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const arr = value => value == null ? [] : Array.isArray(value) ? value : [value];
  const text = value => typeof value === 'string' ? value : value == null ? '' : typeof value === 'object' ? JSON.stringify(value, null, 2) : String(value);
  const data = window.EXPLORER || {math:{},dependencies:[],checks:[],review:{},metadata:{}};
  const math = data.math || {};
  const chapters = arr(math.chapters);
  const dependencies = new Map(arr(data.dependencies).map(dep => [dep.id, dep]));
  const statuses = {'通过':['green','●'],'未找到':['yellow','▲'],'未通过':['red','×'],'核查未完成':['gray','○']};
  const blockMap = new Map();
  const occurrenceMap = new Map();
  const blockOccurrences = new Map();
  const occurrences = [];
  const mobile = () => window.matchMedia('(max-width:900px)').matches;
  let currentChapter = 0;
  let currentView = 'proof';
  let returnFocus = null;
  let returnScroll = 0;
  let filters = {query:'',status:'',category:''};

  function addBlock(block, chapterIndex) {
    if (!block) return;
    const id = block.id || 'notation';
    const normalized = {...block, id, chapterIndex};
    blockMap.set(id, normalized);
    let offset = 0;
    arr(block.paragraphs).forEach((paragraph, paragraphIndex) => {
      const prose = typeof paragraph === 'string' ? paragraph : paragraph.text || '';
      let inParagraph = 0;
      for (const match of prose.matchAll(/\[\[(EXT-\d+)\]\]/g)) {
        const fallbackId = `ref-${id}-${++offset}`;
        const handedOff = arr(math.reference_occurrences).find(item => item.dependency_id === match[1] && (item.step_id || item.block_id) === id && item.paragraph_index === paragraphIndex && !occurrences.some(occurrence => occurrence.id === item.id));
        const occurrence = {id:handedOff?.id || fallbackId,fallbackId,dependency_id:match[1],block_id:id,chapterIndex,paragraphIndex,index:inParagraph++};
        occurrences.push(occurrence);
        occurrenceMap.set(`${id}:${paragraphIndex}:${occurrence.index}`, occurrence);
        if (!blockOccurrences.has(id)) blockOccurrences.set(id, []);
        blockOccurrences.get(id).push(occurrence);
      }
    });
  }
  addBlock(math.target, 0);
  addBlock(math.notation && {...math.notation, id:math.notation.id || 'notation'}, 0);
  chapters.forEach((chapter, index) => arr(chapter.steps).forEach(step => addBlock(step, index)));
  addBlock(math.conclusion, Math.max(0, chapters.length - 1));

  function checkFor(dep) {
    const checks = arr(data.checks).filter(check => check.dependency_id === dep.id);
    const check = checks.findLast(check => String(check.proposition_version) === String(dep.proposition_version));
    if (check) return check;
    if (checks.length) return {semantic_status:'核查未完成',short_reason:'已有核查记录的命题版本与当前正文不同。',formal_status:'当前命题版本尚无对应核查。',candidates:[],rounds:[],stale_checks:checks};
    return {semantic_status:'核查未完成',short_reason:'尚未交接此项的核查记录。',formal_status:'未提供形式化状态。',candidates:[],rounds:[]};
  }
  function semantic(dep) {
    const result = checkFor(dep);
    const label = Object.hasOwn(statuses, result.semantic_status) ? result.semantic_status : '核查未完成';
    return {label,color:statuses[label][0],symbol:statuses[label][1]};
  }
  function badge(dep) {
    const status = semantic(dep);
    return `<span class="status-label ${status.color}"><span aria-hidden="true">${status.symbol}</span>${esc(({通过:"对应通过",未通过:"核查未通过"})[status.label] || status.label)}</span>`;
  }
  function reference(id, occurrence) {
    const dep = dependencies.get(id);
    if (!dep) return '<sup class="gray" title="缺少引用交接记录">[?]</sup>';
    const s = semantic(dep);
    return `<button type="button" class="ref-link ${s.color}" data-dependency="${esc(id)}" ${occurrence ? `id="${esc(occurrence.id)}"` : ''} aria-label="引用 ${esc(dep.number)}：${esc(dep.name)}；${esc(s.label)}。打开批注" aria-controls="drawer" aria-expanded="false" title="${esc(dep.name)} · ${esc(s.label)}"><span>[${esc(dep.number)}]</span><span class="status-icon" aria-hidden="true">${s.symbol}</span></button>`;
  }

  function rich(value, blockId, paragraphIndex = 0) {
    let source = text(value);
    const tokens = [];
    const save = html => `\uE000${tokens.push(html) - 1}\uE001`;
    source = source.replace(/\$\$([\s\S]*?)\$\$|\\\[([\s\S]*?)\\\]|\\\(([\s\S]*?)\\\)|(?<!\\)\$([^$\n]+?)\$/g, (whole, display1, display2, inline1, inline2) => {
      const display = display1 !== undefined || display2 !== undefined;
      const tex = display1 ?? display2 ?? inline1 ?? inline2;
      let rendered;
      try {
        rendered = window.katex.renderToString(tex, {displayMode:display,throwOnError:false,strict:'ignore',trust:false,macros:{'\\AF':'\\operatorname{AF}','\\Ext':'\\operatorname{Ext}','\\F':'\\mathbb{F}','\\Z':'\\mathbb{Z}','\\HF':'H\\mathbb{F}_2',...(data.metadata?.katex_macros || {})}});
      } catch (error) {
        rendered = `<code class="katex-error" title="${esc(error.message)}">${esc(whole)}</code>`;
      }
      return save(`<span class="${display ? 'math-display' : 'math-inline'}">${rendered}</span>`);
    });
    source = source.replace(/`([^`]+)`/g, (_, code) => save(`<code class="inline-code">${esc(code)}</code>`));
    let refIndex = 0;
    source = source.replace(/\[\[(EXT-\d+)\]\]/g, (_, id) => save(reference(id, occurrenceMap.get(`${blockId}:${paragraphIndex}:${refIndex++}`))));
    source = esc(source).replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
    source = source.replace(/\[([^\]]+)\]\((https?:\/\/[^\s)]+)\)/g, (_, label, url) => `<a href="${url}" target="_blank" rel="noopener noreferrer">${label}</a>`);
    return source.replace(/\n/g, '<br>').replace(/\uE000(\d+)\uE001/g, (_, index) => tokens[Number(index)]);
  }
  function paragraphs(block) {
    return arr(block?.paragraphs).map((paragraph, index) => `<p>${rich(typeof paragraph === 'string' ? paragraph : paragraph.text || '', block.id || 'notation', index)}</p>`).join('');
  }
  function prose(value) {
    return arr(value).map(item => `<p>${rich(item)}</p>`).join('');
  }
  function statement(dep) {
    const readable = dep.display_statement || dep.used_statement;
    return `<div class="readable-statement">${prose(readable)}</div>${dep.display_statement ? `<details class="fixed-statement"><summary>查看固定命题原文</summary><div class="detail-body"><pre>${esc(dep.used_statement)}</pre></div></details>` : ''}`;
  }
  function safeURL(value) {
    const url = String(value || '');
    if (/^https?:\/\//i.test(url)) return esc(url);
    if (/^(records|data|reviews)\//.test(url) && !url.includes('..')) return esc('../' + url);
    if (/^(MainPaper|Source|KIP126|docs)\//.test(url) && !url.includes('..')) return esc('../../../../../' + url.replace(/:\d+(?:-\d+)?$/, ''));
    if (/^\.\.?\//.test(url) && !/[<>"']/.test(url)) return esc(url);
    return null;
  }
  const labels = {label:'论文标记',kind:'声明种类',full_type_and_definition:'完整类型与定义',context:'宇宙参数与上下文',initial_mapping:'初步对应',evidence_file:'证据文件',checker_feedback:'核查反馈',continuation_required:'是否继续',comparison:'逐项比较',reason_category:'原因类别',id:'记录编号',dependency_id:'引用编号',number:'编号',version:'版本',proposition_version:'命题版本',line_start:'起始行',line_end:'结束行',key_definitions:'关键定义',math_approval:'数学审定',next_direction:'下一轮方向',title:'标题',name:'名称',declaration:'Lean 声明',declaration_name:'Lean 声明',declarations:'Lean 声明',type:'完整类型',type_text:'完整类型',full_type:'完整类型',file:'文件',path:'路径',line:'行',lines:'行',location:'位置',locator:'定位',url:'链接',status:'状态',semantic_status:'对应核查',formal_status:'形式化状态',result:'结果',reason:'理由',short_reason:'关键原因',full_reason:'完整理由',summary:'说明',notes:'说明',limitations:'限制',source:'来源',sources:'来源',source_statement:'来源命题',used_statement:'本处使用命题',specialization:'应用与专门化',candidate:'候选',candidates:'候选',round:'轮次',round_number:'轮次',query:'检索式',queries:'检索式',search:'检索',searcher:'检索记录',checker:'核查记录',check:'核查',verdict:'结论',checks:'核查项',hypotheses:'前提',hypothesis_alignment:'前提对应',conclusion:'结论',conclusion_alignment:'结论对应',universe_alignment:'宇宙参数对应',parameter_alignment:'参数对应',instantiation:'实例化',proof_status:'证明状态',axioms:'公理依赖',uses_sorry:'sorry 依赖',contains_sorry:'sorry 依赖',depends_on_project_axiom:'项目公理依赖',reviewer:'审查者',math_review:'数学审查',statement:'命题',commit:'仓库版本',date:'日期',scope:'范围',paper:'论文',paper_label:'论文标签',role:'角色',decision:'结论',gaps:'缺口',fixes:'修订',issues:'问题',evidence:'证据',command:'命令',commands:'命令',stdout:'输出',stderr:'错误输出',target:'目标',matches:'匹配项',found:'检索结果',accepted:'通过项',rejected:'拒绝项'};
  function record(value, key = '') {
    if (value == null || value === '') return '<p class="muted">未提供。</p>';
    if (Array.isArray(value)) {
      if (key === 'rounds') return value.length ? value.map((item, index) => `<details class="round-record"><summary>第 ${esc(item.round || item.round_number || index + 1)} 轮</summary><div class="detail-body">${record(item)}</div></details>`).join('') : '<p class="muted">无记录。</p>';
      if (key === 'lines') return `<p>${value.map(esc).join('–')}</p>`;
      return value.length ? value.map((item, index) => `<div class="record-item">${typeof item === 'object' && item !== null ? `<h4>${esc(item.title || item.name || (key === 'rounds' ? `第 ${item.round || item.round_number || index + 1} 轮` : `${index + 1}`))}</h4>` : ''}${record(item, key)}</div>`).join('') : '<p class="muted">无记录。</p>';
    }
    if (typeof value === 'object') return `<dl>${Object.entries(value).map(([field, content]) => `<div class="record-pair"><dt>${esc(labels[field] || field)}</dt><dd>${record(content, field)}</dd></div>`).join('')}</dl>`;
    if (/^(type|type_text|full_type|full_type_and_definition|context|stdout|stderr|command|commands|axioms)$/.test(key)) return `<pre>${esc(text(value))}</pre>`;
    const url = /^(url|path|file|evidence_file)$/.test(key) ? safeURL(value) : null;
    if (url) return `<p><a href="${url}" target="_blank" rel="noopener noreferrer">${esc(value)}</a></p>`;
    return prose(value);
  }
  function setNavigation(view) {
    currentView = view;
    document.querySelectorAll('[data-view]').forEach(link => link.setAttribute('aria-current', link.dataset.view === view ? 'page' : 'false'));
    $('#chapter-nav').innerHTML = (math.target ? `<a href="#proof/${encodeURIComponent(math.target.id || 'target')}">${rich(math.target.title || '证明目标')}</a>` : '') + chapters.map((chapter, index) => `<a href="#proof/${encodeURIComponent(chapter.id)}" ${index === currentChapter && view === 'proof' ? 'aria-current="location"' : ''}>${rich(chapter.title)}</a>${index === currentChapter && view === 'proof' ? arr(chapter.steps).map(step => `<a class="sub-item" href="#proof/${encodeURIComponent(step.id)}">${rich(step.title)}</a>`).join('') : ''}`).join('') + (math.conclusion ? `<a href="#proof/${encodeURIComponent(math.conclusion.id || 'conclusion')}">${rich(math.conclusion.title || '结论')}</a>` : '');
    $('#toc-sidebar').hidden = view !== 'proof';
    $('.reader-layout').classList.toggle('no-toc', view !== 'proof');
  }
  function renderProof(anchor) {
    let requested = null;
    if (anchor) {
      requested = occurrences.find(occurrence => occurrence.id === anchor || occurrence.fallbackId === anchor);
      if (requested) {currentChapter = requested.chapterIndex;anchor = requested.id;}
      else if (blockMap.has(anchor)) currentChapter = blockMap.get(anchor).chapterIndex;
      else {
        const index = chapters.findIndex(chapter => chapter.id === anchor);
        if (index >= 0) currentChapter = index;
      }
    }
    setNavigation('proof');
    if (!chapters.length) {
      $('#main').innerHTML = '<p class="empty-state">正文尚未交接。</p>';
      return;
    }
    const chapter = chapters[currentChapter];
    $('#main').innerHTML = `${currentChapter === 0 ? `<h1>${rich(math.title || '')}</h1>` : ''}<article class="proof-content">${currentChapter === 0 && math.target ? `<section class="intro-section" id="${esc(math.target.id || 'target')}"><h2>${rich(math.target.title || '证明目标')}</h2>${paragraphs(math.target)}${math.notation ? `<div class="notation" id="${esc(math.notation.id || 'notation')}"><h3>${rich(math.notation.title || '记号')}</h3>${paragraphs(math.notation)}</div>` : ''}</section>` : ''}<header class="chapter-header" id="${esc(chapter.id)}"><div class="chapter-position">${currentChapter + 1} / ${chapters.length}</div><h2>${rich(chapter.title)}</h2></header>${arr(chapter.steps).map(step => `<section class="proof-step" id="${esc(step.id)}"><h3>${rich(step.title)}</h3>${paragraphs(step)}</section>`).join('')}${currentChapter === chapters.length - 1 && math.conclusion ? `<section class="conclusion" id="${esc(math.conclusion.id || 'conclusion')}"><h2>${rich(math.conclusion.title || '结论')}</h2>${paragraphs(math.conclusion)}</section>` : ''}</article><nav class="page-nav" aria-label="章节翻页"><button data-page="${currentChapter - 1}" ${currentChapter === 0 ? 'disabled' : ''}>← 上一章</button><span>第 ${currentChapter + 1} / ${chapters.length} 章</span><button data-page="${currentChapter + 1}" ${currentChapter === chapters.length - 1 ? 'disabled' : ''}>下一章 →</button></nav>`;
    if (anchor) requestAnimationFrame(() => {
      const element = document.getElementById(anchor);
      if (element) {
        element.scrollIntoView({block:'start',behavior:'instant'});
        if (element.classList.contains('ref-link')) element.focus({preventScroll:true});
      }
    });
  }
  function stats() {
    const counts = Object.fromEntries(Object.keys(statuses).map(status => [status, 0]));
    dependencies.forEach(dep => counts[semantic(dep).label]++);
    return {total:dependencies.size,occurrences:occurrences.length,rounds:[...dependencies.values()].reduce((sum, dep) => sum + arr(checkFor(dep).rounds).length, 0),counts};
  }
  function legend() {
    return `<div class="legend"><div class="legend-key">${Object.entries(statuses).map(([label, [color, symbol]]) => `<span class="status-label ${color}"><span aria-hidden="true">${symbol}</span>${label}</span>`).join('')}</div><p>颜色表示 Lean 语义对应情况，不表示论文证明正确或错误，也不表示形式化证明已经完成。</p></div>`;
  }
  function renderReferences() {
    setNavigation('references');
    const s = stats();
    const categories = [...new Set([...dependencies.values()].map(dep => dep.category).filter(Boolean))];
    $('#main').innerHTML = `<div class="eyebrow">随文引用</div><h1>引用总览</h1><p class="reference-intro">查看证明使用的事实，或返回它在正文中出现的位置。</p><div class="reference-counts"><span><strong>${s.total}</strong>项去重引用</span>${Object.entries(s.counts).map(([label,count]) => `<span class="status-label ${statuses[label][0]}">${label} ${count}</span>`).join('')}</div><div class="filters"><input type="search" id="reference-search" aria-label="搜索引用编号或关键词" placeholder="搜索编号或关键词" value="${esc(filters.query)}"><select id="status-filter" aria-label="按核查状态筛选"><option value="">全部状态</option>${Object.keys(statuses).map(status => `<option ${filters.status === status ? 'selected' : ''}>${status}</option>`).join('')}</select><select id="category-filter" aria-label="按引用类别筛选"><option value="">全部类别</option>${categories.map(category => `<option ${filters.category === category ? 'selected' : ''}>${esc(category)}</option>`).join('')}</select></div><p id="result-label" class="result-label" aria-live="polite"></p><div id="reference-list"></div><details class="record-details"><summary>引用次数与核查轮次</summary><div class="detail-body"><p>正文引用出现 ${s.occurrences} 次；记录的核查轮次共 ${s.rounds} 轮。</p></div></details>${legend()}`;
    filterReferences();
  }
  function filterReferences() {
    const query = filters.query.trim().toLowerCase().replace(/^\[|\]$/g, '');
    const found = [...dependencies.values()].filter(dep => (!query || (/^\d+$/.test(query) ? String(dep.number) === query : [dep.id,dep.number,dep.name,dep.keywords,dep.short_statement,dep.used_statement,dep.category].map(text).join(' ').toLowerCase().includes(query))) && (!filters.status || semantic(dep).label === filters.status) && (!filters.category || dep.category === filters.category));
    $('#result-label').textContent = `显示 ${found.length} / ${dependencies.size} 项引用`;
    $('#reference-list').innerHTML = found.length ? found.map(dep => {
      const uses = occurrences.filter(occurrence => occurrence.dependency_id === dep.id);
      return `<article class="reference-row" data-reference-id="${esc(dep.id)}"><div class="reference-heading"><button data-dependency="${esc(dep.id)}" aria-controls="drawer" aria-expanded="false"><span class="ref-number">[${esc(dep.number)}]</span>${rich(dep.name)}</button>${badge(dep)}</div>${prose(checkFor(dep).short_reason || '')}<div class="reference-usage"><span>${esc(dep.category || '')}</span>${uses.map((use,index) => `<a href="#proof/${encodeURIComponent(use.id)}" title="返回正文原句">${rich(blockMap.get(use.block_id)?.title || '正文')} ${uses.length > 1 ? `· ${index + 1}` : ''} ↗</a>`).join('')}</div></article>`;
    }).join('') : '<p class="empty-state">没有匹配的引用。试试其他关键词或清除筛选。</p>';
  }
  function renderReview() {
    setNavigation('review');
    const review = data.review || {};
    const mathReview = review.math_review || review.mathematical || review.math || review.mathematical_review || review;
    const engineering = review.engineering || review.engineering_review || review.validation;
    const formal = review.formal || review.formal_review;
    const other = mathReview === review ? {} : Object.fromEntries(Object.entries(review).filter(([key]) => !['math_review','mathematical','math','mathematical_review','engineering','engineering_review','validation','formal','formal_review'].includes(key)));
    $('#main').innerHTML = `<div class="eyebrow">阅读记录</div><h1>审查与版本</h1><div class="review-content">${data.metadata?.scope ? `<div class="scope-note">${prose(data.metadata.scope)}</div>` : ''}<h2>数学审查</h2>${mathReview ? record(mathReview) : '<p>尚未交接独立数学审查记录。</p>'}${formal ? `<h2>形式化核查</h2>${record(formal)}` : ''}<h2>版本与来源</h2>${record(Object.fromEntries(['date','commit','paper','architecture'].filter(key => data.metadata?.[key] != null).map(key => [key,data.metadata[key]])))}${math.version ? `<p>正文版本：${esc(math.version)}</p>` : ''}<details class="record-details"><summary>工程检查记录</summary><div class="detail-body">${engineering ? record(engineering) : '<p>尚未交接工程检查记录。</p>'}</div></details>${Object.keys(other).length ? `<details class="record-details"><summary>其他审查记录</summary><div class="detail-body">${record(other)}</div></details>` : ''}<details class="record-details"><summary>原始交接数据</summary><div class="detail-body"><p><a href="../data/math.json" target="_blank">数学正文</a> · <a href="../data/dependencies.json" target="_blank">引用命题</a> · <a href="../data/checks.json" target="_blank">核查记录</a> · <a href="../data/review.json" target="_blank">审查记录</a></p></div></details>${legend()}</div>`;
  }
  function openDrawer(id, trigger) {
    const dep = dependencies.get(id);
    if (!dep) return;
    const triggerTop = trigger?.getBoundingClientRect().top;
    document.querySelectorAll('.reference-context').forEach(element => element.classList.remove('reference-context'));
    trigger?.closest('.proof-content p')?.classList.add('reference-context');
    if ($('#drawer').hidden) {
      returnFocus = trigger || document.activeElement;
      returnScroll = window.scrollY;
    } else if (trigger && !$('#drawer').contains(trigger)) {returnFocus = trigger;returnScroll = window.scrollY;}
    document.querySelectorAll('[data-dependency]').forEach(element => {element.classList.toggle('is-active', element === trigger);element.setAttribute('aria-expanded', element === trigger ? 'true' : 'false');});
    const check = checkFor(dep);
    $('#drawer-content').innerHTML = `<span class="annotation-number">引用 [${esc(dep.number)}]</span><h2>${rich(dep.name)}</h2><section class="annotation-section"><h3>核查结果</h3>${badge(dep)}</section><section class="annotation-section"><h3>关键原因</h3>${prose(check.short_reason || '尚未记录关键原因。')}</section><section class="annotation-section"><h3>本处使用的事实</h3>${prose(dep.used_summary || dep.short_statement || dep.used_statement || '')}</section><section class="annotation-section"><h3>形式化状态</h3>${record(check.formal_status || '未提供形式化状态。')}</section><details id="source-details"><summary>查看来源与完整命题</summary><div class="detail-body">${dep.used_statement ? `<h4>本处使用命题（完整）</h4>${statement(dep)}` : ''}${dep.source_statement && dep.source_statement !== dep.used_statement ? `<h4>来源命题</h4>${prose(dep.source_statement)}` : ''}${dep.specialization ? `<h4>本处的专门化</h4>${record(dep.specialization)}` : ''}${record(dep.sources || [],'sources')}<h4>正文使用位置</h4><p>${occurrences.filter(item => item.dependency_id === dep.id).map(item => `<a href="#proof/${encodeURIComponent(item.id)}">${rich(blockMap.get(item.block_id)?.title || '正文')} ↗</a>`).join('<br>')}</p></div></details><details id="lean-details"><summary>查看 Lean 声明与对应依据</summary><div class="detail-body">${prose(check.full_reason || '')}${check.comparison ? `<h4>逐项比较</h4>${record(check.comparison)}` : ''}${record(check.candidates || [],'candidates')}${arr(check.limitations).length ? `<h4>限制</h4>${record(check.limitations)}` : ''}${check.stale_checks ? `<h4>已过期的命题版本记录</h4>${record(check.stale_checks)}` : ''}</div></details><details id="round-details"><summary>查看检索记录（共 ${arr(check.rounds).length} 轮）</summary><div class="detail-body">${record(check.rounds || [],'rounds')}</div></details>`;
    $('#drawer').hidden = false;
    $('#drawer').inert = false;
    $('#drawer').setAttribute('aria-hidden','false');
    document.body.classList.add('drawer-open');
    $('#drawer-shade').hidden = !mobile();
    if (mobile()) {
      $('.site-header').inert = true;
      $('.reader-layout').inert = true;
      $('#drawer').setAttribute('role','dialog');
      $('#drawer').setAttribute('aria-modal','true');
    }
    $('#drawer').scrollTop = 0;
    if (!mobile() && trigger?.isConnected && Number.isFinite(triggerTop)) {
      window.scrollBy({top:trigger.getBoundingClientRect().top - triggerTop,behavior:'instant'});
    }
    $('#close-drawer').focus({preventScroll:true});
    $('#announcer').textContent = `已打开引用 ${dep.number}，${semantic(dep).label}`;
  }
  function closeDrawer(restore = true) {
    if ($('#drawer').hidden) return;
    $('#drawer').hidden = true;
    $('#drawer').inert = true;
    $('#drawer').setAttribute('aria-hidden','true');
    $('#drawer').removeAttribute('role');
    $('#drawer').removeAttribute('aria-modal');
    $('#drawer-shade').hidden = true;
    $('.site-header').inert = false;
    $('.reader-layout').inert = false;
    document.body.classList.remove('drawer-open');
    document.querySelectorAll('.reference-context').forEach(element => element.classList.remove('reference-context'));
    document.querySelectorAll('[data-dependency]').forEach(element => {element.classList.remove('is-active');element.setAttribute('aria-expanded','false');});
    if (restore && returnFocus?.isConnected) {
      window.scrollTo({top:returnScroll,behavior:'instant'});
      returnFocus.focus({preventScroll:true});
    }
    returnFocus = null;
  }
  function route() {
    closeDrawer(false);
    const raw = window.location.hash.slice(1);
    const [view, encodedAnchor] = raw.split('/');
    let anchor = '';
    try { anchor = decodeURIComponent(encodedAnchor || ''); } catch (_) { /* Ignore malformed anchors. */ }
    if (view === 'references' || view === 'dependencies') renderReferences();
    else if (view === 'review') renderReview();
    else renderProof(anchor);
    if (!anchor) window.scrollTo({top:0,behavior:'instant'});
    $('#chapter-nav').classList.remove('is-expanded');
    $('#toggle-toc').setAttribute('aria-expanded','false');
  }
  document.addEventListener('click', event => {
    const referenceButton = event.target.closest('[data-dependency]');
    if (referenceButton) {openDrawer(referenceButton.dataset.dependency, referenceButton);return;}
    const pageButton = event.target.closest('[data-page]');
    if (pageButton && !pageButton.disabled) {
      const index = Number(pageButton.dataset.page);
      if (chapters[index]) window.location.hash = `proof/${encodeURIComponent(chapters[index].id)}`;
    }
    if (event.target.closest('#close-drawer') || event.target === $('#drawer-shade')) closeDrawer();
    if (event.target.closest('#toggle-toc')) {
      const expanded = $('#chapter-nav').classList.toggle('is-expanded');
      $('#toggle-toc').setAttribute('aria-expanded',String(expanded));
    }
  });
  document.addEventListener('input', event => {
    if (event.target.id === 'reference-search') {filters.query = event.target.value;filterReferences();}
  });
  document.addEventListener('change', event => {
    if (event.target.id === 'status-filter') {filters.status = event.target.value;filterReferences();}
    if (event.target.id === 'category-filter') {filters.category = event.target.value;filterReferences();}
  });
  document.addEventListener('keydown', event => {
    if ($('#drawer').hidden) return;
    if (event.key === 'Escape') {event.preventDefault();closeDrawer();}
    if (event.key === 'Tab' && mobile()) {
      const collapsed = [...$('#drawer').querySelectorAll('details:not([open])')];
      const focusable = [...$('#drawer').querySelectorAll('button,a,summary,[tabindex="0"]')].filter(element => element.getClientRects().length && !element.disabled && !collapsed.some(details => details.contains(element) && !details.querySelector(':scope > summary')?.contains(element)));
      const first = focusable[0], last = focusable[focusable.length - 1];
      if (event.shiftKey && document.activeElement === first) {event.preventDefault();last.focus();}
      else if (!event.shiftKey && document.activeElement === last) {event.preventDefault();first.focus();}
    }
  });
  window.addEventListener('hashchange', route);
  window.addEventListener('resize', () => {
    if (!$('#drawer').hidden) {
      const modal = mobile();
      $('#drawer-shade').hidden = !modal;
      $('.site-header').inert = modal;
      $('.reader-layout').inert = modal;
      if (modal) {$('#drawer').setAttribute('role','dialog');$('#drawer').setAttribute('aria-modal','true');}
      else {$('#drawer').removeAttribute('role');$('#drawer').removeAttribute('aria-modal');}
    }
  });
  document.title = math.title ? `${math.title.replace(/\$/g,'').replace(/\\eta\b/g,'η').replace(/h_6\^2/g,'h₆²')} · 证明阅读室` : '证明阅读室';
  window.proofReader = {statistics:stats(),chapters:chapters.map(chapter => ({id:chapter.id,title:chapter.title,steps:arr(chapter.steps).map(step=>step.id)})),occurrences,openDrawer,closeDrawer};
  route();
})();
