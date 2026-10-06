"use strict";
(() => {
  const data = window.PROOF_BUNDLE;
  const $ = id => document.getElementById(id);
  const main = $("main"), panel = $("inspector"), annotation = $("annotation");
  const labels = {passed:"对应通过",not_found:"未找到",not_passed:"核查未通过",incomplete:"核查未完成"};
  const symbols = {passed:"✓",not_found:"?",not_passed:"×",incomplete:"…"};
  const dependencies = new Map(data.dependencies.map((d,i) => [d.id,{...d,number:i+1}]));
  const parts = new Map(data.parts.map(p => [p.id,p]));
  let continuous = false, chapter = data.chapters[0]?.id, origin = null, originY = 0, marked = null;
  let route = "proof", proofPosition = 0, pendingUse = null, previousRoute = "proof";
  const filters = {query:"",status:"",category:""};
  const mathErrors = [];

  function el(tag,text,cls) { const node=document.createElement(tag); if(text !== undefined)node.textContent=text; if(cls)node.className=cls; return node; }
  function link(text,href) { const node=el("a",text);node.href=href;return node; }
  function disclosure(title,content) { const node=el("details");node.append(el("summary",title));const body=el("div",undefined,"detail-content");body.append(content);node.append(body);return node; }
  function textValue(value) {return typeof value === "string" ? value : JSON.stringify(value,null,2);}
  function safeHtml(htmlText,cls) { const node=el("div",undefined,cls);node.innerHTML=htmlText;return node; }
  function renderMath(root) {
    for (const node of root.querySelectorAll(".math-node:not([data-rendered])")) {
      node.dataset.rendered="true";
      try {window.katex.render(node.dataset.tex,node,{displayMode:node.dataset.display==="true",throwOnError:true,trust:false,strict:"warn",maxExpand:1000,maxSize:20});}
      catch(error) {node.textContent=node.dataset.tex;node.classList.add("math-error");node.title=String(error);mathErrors.push({tex:node.dataset.tex,error:String(error)});}
    }
    // External statements are fixed mathematical sources. Render their literal
    // math delimiters without rewording or interpreting any source as HTML.
    for (const block of root.querySelectorAll(".statement:not([data-rendered])")) {
      block.dataset.rendered="true";
      const source=block.textContent;block.replaceChildren();
      const regex=/\$\$([\s\S]+?)\$\$|\\\[([\s\S]+?)\\\]|\\\(([\s\S]+?)\\\)|\$([^$\n]+?)\$/g;
      let pos=0;
      for(const match of source.matchAll(regex)) {
        block.append(document.createTextNode(source.slice(pos,match.index)));
        const node=el("span",undefined,"math-node");node.dataset.tex=match[1]??match[2]??match[3]??match[4];node.dataset.display=String(match[1]!==undefined||match[2]!==undefined);block.append(node);pos=match.index+match[0].length;
      }
      block.append(document.createTextNode(source.slice(pos)));renderMath(block);
    }
  }
  function status(d) {return el("span",symbols[d.status]+" "+labels[d.status],"status "+d.status);}
  function block(title,text,mathematical=false) {const section=el("section",undefined,"annotation-block");section.append(el("h3",title),el("div",text,mathematical?"statement":""));return section;}
  function reviewedTitle(titleHtml,tag="span") {const node=el(tag);node.innerHTML=titleHtml;return node;}
  function decorateReferences(root) {
    for(const button of root.querySelectorAll("button.reference")) {
      const dep=dependencies.get(button.dataset.dependency);
      if(!dep)throw new Error("Dangling reference in rendered document");
      button.classList.add(dep.status);button.title="引用 "+dep.number+" · "+dep.name+" · "+labels[dep.status];
      button.setAttribute("aria-label",button.title);button.addEventListener("click",()=>openDependency(dep.id,button));
    }
  }
  function closeDependency(restore=true) {
    const wasOpen=!panel.hidden;panel.hidden=true;$("layout").classList.remove("has-inspector");
    document.body.classList.remove("drawer-open");main.inert=false;$("contents").inert=false;
    if(origin)origin.setAttribute("aria-expanded","false");if(marked)marked.classList.remove("citing-current");
    if(restore&&wasOpen) {if(origin?.isConnected)origin.focus({preventScroll:true});window.scrollTo({top:originY,behavior:"instant"});}
    origin=null;marked=null;
  }
  function openDependency(id,trigger) {
    const dep=dependencies.get(id);if(!dep)return;
    if(!panel.hidden)closeDependency(false);
    origin=trigger??null;originY=window.scrollY;annotation.replaceChildren();
    const title=el("h2","["+dep.number+"] "+dep.name,"statement");title.id="annotation-title";annotation.append(title);
    const result=el("section",undefined,"annotation-block");result.append(el("h3","核查结果"),status(dep));annotation.append(result);
    annotation.append(block("关键原因",dep.short_reason));
    annotation.append(block("本处使用的事实",dep.used_statement,true));
    const formalSummary=dep.formal_status?.summary??(Array.isArray(dep.formal_status)?dep.formal_status.join("；"):textValue(dep.formal_status));
    annotation.append(block("形式化状态",formalSummary));
    const uses=el("div",undefined,"use-links");
    dep.uses.forEach((site,i)=>{const a=link("使用位置 "+(i+1)+" · ","#proof/"+site.part_id);a.append(reviewedTitle(parts.get(site.part_id).title_html));a.addEventListener("click",event=>{event.preventDefault();jumpToUse(site.part_id,id,i);});uses.append(a);});
    if(dep.uses.length)annotation.append(block("返回正文",""),uses);
    const source=el("div");
    if(dep.source_statement)source.append(block("来源中的完整命题",dep.source_statement,true));
    if(dep.specialization)source.append(block("实例化与使用条件",textValue(dep.specialization),true));
    source.append(el("pre",textValue(dep.sources??dep.source??[])));annotation.append(disclosure("来源与完整命题",source));
    const formal=el("div");formal.append(el("p",dep.full_reason??dep.short_reason));
    if(dep.formal_status&&typeof dep.formal_status==="object")formal.append(el("pre",textValue(dep.formal_status)));
    if(dep.candidates)formal.append(el("pre",textValue(dep.candidates)));
    for(const [index,round] of dep.rounds.entries()) {
      const candidates=round.candidates??round.search?.candidates??round.searcher?.candidates;
      if(candidates)formal.append(el("h4","第 "+(index+1)+" 轮候选"),el("pre",textValue(candidates)));
    }
    annotation.append(disclosure("Lean 声明及对应依据",formal));
    const rounds=el("div");dep.rounds.forEach((round,i)=>rounds.append(disclosure("第 "+(i+1)+" 轮",el("pre",textValue(round)))));
    if(!dep.rounds.length)rounds.append(el("p","尚无实际检索轮次记录。"));
    annotation.append(disclosure("检索记录（共 "+dep.rounds.length+" 轮）",rounds));
    panel.hidden=false;$("layout").classList.add("has-inspector");panel.scrollTop=0;
    if(window.matchMedia("(max-width: 800px)").matches) {document.body.classList.add("drawer-open");main.inert=true;$("contents").inert=true;}
    if(origin) {origin.setAttribute("aria-expanded","true");marked=origin.closest("p,li,td");if(marked)marked.classList.add("citing-current");}
    renderMath(annotation);$("close-inspector").focus({preventScroll:true});
  }
  function jumpToUse(partId,depId,occurrence) {
    closeDependency(false);pendingUse={partId,depId,occurrence};const hash="#proof/"+partId;
    if(location.hash===hash)renderRoute();else location.hash=hash;
  }
  function toc() {
    const contents=$("toc");contents.replaceChildren();
    for(const item of data.chapters) {
      const a=link(undefined,"#proof/"+item.parts[0]);a.append(reviewedTitle(item.title_html));
      if(item.id===chapter&&route==="proof")a.setAttribute("aria-current","location");contents.append(a);
    }
    renderMath(contents);
  }
  function appendPart(part,container) {
    const section=el("section",undefined,"proof-part");section.id="part-"+part.id;section.dataset.sourceSha256=part.sha256;section.dataset.partId=part.id;
    section.append(safeHtml(part.html,"proof-body"));container.append(section);
  }
  function renderProof(partId) {
    if(parts.has(partId))chapter=parts.get(partId).chapter_id;
    if(!data.parts.length) {main.append(el("p","暂无可装配的审定正文。", "empty"));return;}
    const controls=el("div",undefined,"reading-controls");
    const mode=el("button",continuous?"按章阅读":"连续阅读");mode.type="button";mode.id="reading-mode";mode.setAttribute("aria-pressed",String(continuous));
    mode.addEventListener("click",()=>{const topPart=[...main.querySelectorAll(".proof-part")].find(node=>node.getBoundingClientRect().bottom>100);const top=topPart?.getBoundingClientRect().top;continuous=!continuous;main.replaceChildren();renderProof(topPart?.dataset.partId);toc();if(topPart)requestAnimationFrame(()=>{const newPart=$(topPart.id);if(newPart)window.scrollBy(0,newPart.getBoundingClientRect().top-top);});});
    controls.append(mode);main.append(controls);
    const article=el("article",undefined,"mathematical-text");
    const current=data.chapters.find(c=>c.id===chapter)??data.chapters[0];
    const shown=continuous?data.parts:current.parts.map(id=>parts.get(id));shown.forEach(p=>appendPart(p,article));main.append(article);
    if(!continuous) {
      const index=data.chapters.indexOf(current);const nav=el("nav",undefined,"page-controls");nav.setAttribute("aria-label","章节翻页");
      nav.append(index>0?link("← 上一章","#proof/"+data.chapters[index-1].parts[0]):el("span",""),el("span",(index+1)+" / "+data.chapters.length),index<data.chapters.length-1?link("下一章 →","#proof/"+data.chapters[index+1].parts[0]):el("span",""));main.append(nav);
    }
    renderMath(main);decorateReferences(main);
  }
  function overview() {
    main.append(el("h1","引用总览"));const s=data.statistics;
    main.append(el("p","去重依赖 "+s.dependencies+" 项 · "+Object.keys(labels).map(k=>labels[k]+" "+s.statuses[k]).join(" · "),"statistics"));
    main.append(el("p","未完成 "+s.incomplete+" 项；正文引用 "+s.reference_occurrences+" 次；实际检索 "+s.rounds+" 轮。","small"));
    main.append(el("p","颜色表示 Lean 语义对应情况，不表示论文证明的正确与否，也不表示形式化证明已经完成。","legend"));
    const control=el("div",undefined,"filters");const search=el("input");search.type="search";search.placeholder="搜索名称、编号、关键词";search.setAttribute("aria-label","搜索引用");search.value=filters.query;
    const state=el("select");state.setAttribute("aria-label","按状态筛选");for(const [key,value]of [["","全部状态"],...Object.entries(labels)]) {const o=el("option",value);o.value=key;state.append(o);}state.value=filters.status;
    const category=el("select");category.setAttribute("aria-label","按类别筛选");for(const value of ["",...new Set(data.dependencies.map(d=>d.category).filter(Boolean))]){const o=el("option",value||"全部类别");o.value=value;category.append(o);}category.value=filters.category;
    control.append(search,state,category);main.append(control);
    const count=el("p",undefined,"small");count.setAttribute("role","status");const list=el("div",undefined,"dependency-list");main.append(count,list);
    function refresh(){list.replaceChildren();const query=filters.query.toLocaleLowerCase().trim();let found=0;
      for(const dep of dependencies.values()) {
        const haystack=[dep.id,dep.number,dep.name,dep.used_statement,dep.short_reason].join(" ").toLocaleLowerCase();
        if(query&&!haystack.includes(query)||filters.status&&filters.status!==dep.status||filters.category&&filters.category!==dep.category)continue;
        found++;const row=el("article",undefined,"dependency-row");const button=el("button",undefined,"dependency-open");button.type="button";
        button.append(el("strong","["+dep.number+"] "+dep.name,"statement"),status(dep));button.addEventListener("click",()=>openDependency(dep.id,button));row.append(button,el("p",dep.short_reason));
        const sites=el("div",undefined,"use-links");dep.uses.forEach((site,i)=>{const a=link("使用位置 "+(i+1),"#proof/"+site.part_id);a.addEventListener("click",event=>{event.preventDefault();jumpToUse(site.part_id,dep.id,i);});sites.append(a);});row.append(sites);list.append(row);
      }renderMath(list);count.textContent="显示 "+found+" / "+dependencies.size+" 项";if(!found)list.append(el("p","没有符合条件的引用。"));
    }
    search.addEventListener("input",()=>{filters.query=search.value;refresh();});state.addEventListener("change",()=>{filters.status=state.value;refresh();});category.addEventListener("change",()=>{filters.category=category.value;refresh();});refresh();
  }
  function reviews() {
    main.append(el("h1","数学审查"));
    main.append(el("p","数学审查记录与引用的 Lean 对应核查分别保存。"));
    for(const record of data.reviews) {const p=parts.get(record.id);main.append(disclosure(p.title,el("pre",textValue(record))));}
    if(!data.reviews.length)main.append(el("p","尚无已装配正文的审查记录。"));
    main.append(disclosure("衔接审查记录",el("pre",textValue(data.global_reviews))));
  }
  function info() {
    main.append(el("h1","版本与执行信息"),el("p","构建检查只核对源文、版本与审查记录的绑定关系，不判断数学正确性。"));
    main.append(el("p","公式与字体随页面提供，阅读不需要网络。"));
    main.append(link("纯数学正文","proof.zh.md"),el("span"," · "),link("源文与字节映射","assembly-map.json"));
    main.append(disclosure("版本与工程记录",el("pre",textValue({status:data.status,manifest_sha256:data.manifest_sha256,rendering:data.rendering,engineering:data.engineering}))));
    main.append(disclosure("公式渲染记录",el("pre",textValue({errors:mathErrors}))));
  }
  function renderRoute() {
    const [view,id]=location.hash.slice(1).split("/");previousRoute=route;route=["references","reviews","info"].includes(view)?view:"proof";
    if(previousRoute==="proof")proofPosition=window.scrollY;
    closeDependency(false);main.replaceChildren();$("contents").hidden=route!=="proof";
    for(const name of ["proof","references"]) {if(name===route)$("tab-"+name).setAttribute("aria-current","page");else $("tab-"+name).removeAttribute("aria-current");}
    document.querySelector(".secondary").open=false;
    if(route==="references")overview();else if(route==="reviews")reviews();else if(route==="info")info();else {renderProof(id);toc();}
    requestAnimationFrame(()=>{
      if(pendingUse) {
        const pending=pendingUse;pendingUse=null;const section=$("part-"+pending.partId);const localIndex=dependencies.get(pending.depId).uses.slice(0,pending.occurrence).filter(site=>site.part_id===pending.partId).length;const button=section?.querySelectorAll('[data-dependency="'+pending.depId+'"]')[localIndex];
        if(button) {button.scrollIntoView({block:"center",behavior:"instant"});button.focus({preventScroll:true});button.classList.add("use-highlight");setTimeout(()=>button.classList.remove("use-highlight"),1800);}
      } else if(route==="proof"&&id&&$("part-"+id))$("part-"+id).scrollIntoView({block:"start",behavior:"instant"});
      else window.scrollTo({top:route==="proof"&&previousRoute!=="proof"?proofPosition:0,behavior:"instant"});
    });
  }
  if(data.status!=="complete") {$("phase").hidden=false;$("phase").textContent="证明尚未完成；这里只展示已审定的完整段落。";}
  document.title=data.title||"证明阅读器";
  if(window.matchMedia("(max-width: 800px)").matches)$("contents-disclosure").open=false;
  $("close-inspector").addEventListener("click",()=>closeDependency());
  document.addEventListener("keydown",event=>{
    if(event.key==="Escape"&&!panel.hidden)closeDependency();
    if(event.key==="Tab"&&!panel.hidden&&window.matchMedia("(max-width: 800px)").matches) {
      const nodes=[...panel.querySelectorAll('button,a[href],summary,[tabindex="0"]')].filter(n=>n.getClientRects().length);const first=nodes[0],last=nodes[nodes.length-1];
      if(event.shiftKey&&document.activeElement===first){event.preventDefault();last?.focus();}else if(!event.shiftKey&&document.activeElement===last){event.preventDefault();first?.focus();}
    }
  });
  window.addEventListener("hashchange",renderRoute);renderRoute();
  window.proofReader=Object.freeze({statistics:data.statistics,partIds:data.parts.map(p=>p.id),chapterIds:data.chapters.map(c=>c.id),mathErrors,sourceHashes:data.parts.map(p=>({id:p.id,sha256:p.sha256}))});
})();
