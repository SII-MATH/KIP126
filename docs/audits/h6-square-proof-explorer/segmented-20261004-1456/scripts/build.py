#!/usr/bin/env python3
"""Render only hash-bound, accepted sources. This validates identity, not mathematics."""
from __future__ import annotations
import argparse
from collections import Counter
import hashlib
import html
import importlib.metadata
import json
from pathlib import Path
import re
import shutil
import sys
from markdown_it import MarkdownIt

RUN = Path(__file__).resolve().parent.parent
ROOT = RUN.parents[3]
REF = re.compile(r'\[\[(?:EXT:)?(EXT-[A-Za-z0-9_-]+)\]\]|\[@(EXT-[A-Za-z0-9_-]+)\]')
ID = re.compile(r'[A-Za-z][A-Za-z0-9_-]*\Z')
STATUSES = ('passed', 'not_found', 'not_passed', 'incomplete')
ALIASES = {'对应通过':'passed','未找到':'not_found','核查未通过':'not_passed','核查未完成':'incomplete','pending':'incomplete','failed':'not_passed'}

def digest(value):
    return hashlib.sha256(value if isinstance(value, bytes) else value.encode('utf-8')).hexdigest()

def serial(value):
    return json.dumps(value, ensure_ascii=False, sort_keys=True, indent=2) + '\n'

def demand(condition, message):
    if not condition:
        raise ValueError(message)

def path_at(run, value):
    demand(isinstance(value, str) and value, 'Expected source path')
    path = (run / value).resolve()
    demand(path.is_relative_to(run.resolve()), f'Path escapes run: {value}')
    demand(path.is_file(), f'Missing source: {value}')
    return path

def read_json(run, value):
    return json.loads(path_at(run, value).read_text(encoding='utf-8'))

def ref_ids(source):
    return [next(v for v in match.groups() if v) for match in REF.finditer(source)]

def reference_text(source, numbers):
    return REF.sub(lambda m: '[' + str(numbers[next(v for v in m.groups() if v)]) + ']', source)

def heading(source):
    for line in source.splitlines():
        match = re.fullmatch(r'#{1,6}\s+(.+?)\s*#*\s*', line)
        if match:
            return match.group(1)
    return None

def review_gate(part, source, review):
    identifier = part['id']
    actual = digest(source)
    demand(actual == part['sha256'], f'{identifier}: source SHA-256 mismatch')
    bound = review.get('source_sha256', review.get('sha256', review.get('body_sha256')))
    demand(bound == actual, f'{identifier}: review does not bind current source hash')
    demand(str(review.get('version', review.get('source_version'))) == str(part['version']), f'{identifier}: review version mismatch')
    for axis in ('correctness', 'faithfulness', 'detail'):
        verdict = review.get(axis, review.get('verdicts', {}).get(axis))
        if isinstance(verdict, dict):
            verdict = verdict.get('verdict', verdict.get('status'))
        demand(verdict == 'pass', f'{identifier}: {axis} not pass')
    demand(review.get('approved_title') == part['title'], f'{identifier}: title not reviewed')
    demand(heading(source.decode('utf-8') if isinstance(source, bytes) else source) == part['title'], f'{identifier}: title differs from source heading')
    # Mathematical adjudication is intentionally outside this gate. These checks
    # only prevent rendering a different version under an existing review.


def dependencies_from(run, entries):
    result = []
    for item in entries:
        artifact_hash = None
        if isinstance(item, str):
            raw = path_at(run, item).read_bytes()
            artifact_hash = digest(raw)
            value = json.loads(raw)
        elif isinstance(item, dict) and isinstance(item.get('source'), str):
            raw = path_at(run, item['source']).read_bytes()
            if item.get('sha256'):
                demand(digest(raw) == item['sha256'], 'External dependency source hash mismatch')
            artifact_hash = digest(raw)
            value = json.loads(raw)
        else:
            value = item
        if isinstance(value, list):
            items = value
        elif isinstance(value, dict) and ('external_dependencies' in value or 'dependencies' in value):
            items = value.get('external_dependencies', value.get('dependencies'))
        else:
            items = [value]
        for entry in items:
            result.append({**entry, '_source_sha256':artifact_hash})
    return result


def markdown_engine(numbers):
    md = MarkdownIt('commonmark', {'html': False, 'breaks': False}).enable('table')
    def inline_math(state, silent):
        pos = state.pos
        opening = next((s for s in ('$$', '\\[', '\\(', '$') if state.src.startswith(s, pos)), None)
        if not opening:
            return False
        closing = {'$$':'$$','\\[':'\\]','\\(':'\\)','$':'$'}[opening]
        end = pos + len(opening)
        while True:
            end = state.src.find(closing, end)
            if end < 0:
                return False
            escapes = len(state.src[:end]) - len(state.src[:end].rstrip('\\'))
            if escapes % 2 == 0:
                break
            end += len(closing)
        if not silent:
            token = state.push('local_math', 'span', 0)
            token.content = state.src[pos + len(opening):end]
            token.meta = {'display': opening in ('$$', '\\[')}
        state.pos = end + len(closing)
        return True
    def inline_ref(state, silent):
        match = REF.match(state.src, state.pos)
        if not match:
            return False
        identifier = next(v for v in match.groups() if v)
        demand(identifier in numbers, f'Unknown reference: {identifier}')
        if not silent:
            token = state.push('local_reference', 'button', 0)
            token.content = identifier
        state.pos = match.end()
        return True
    def block_math(state, start, end, silent):
        first = state.src[state.bMarks[start] + state.tShift[start]:state.eMarks[start]].lstrip()
        opening = next((s for s in ('$$', '\\[') if first.startswith(s)), None)
        if not opening:
            return False
        closing = '$$' if opening == '$$' else '\\]'
        lines = [first[len(opening):]]
        nextline = start + 1
        if closing not in lines[0]:
            while nextline < end:
                line = state.src[state.bMarks[nextline]:state.eMarks[nextline]]
                lines.append(line)
                nextline += 1
                if closing in line:
                    break
        content = '\n'.join(lines)
        close_at = content.find(closing)
        if close_at < 0 or content[close_at + len(closing):].strip():
            return False
        if silent:
            return True
        token = state.push('local_math', 'div', 0)
        token.block = True
        token.content = content[:close_at]
        token.meta = {'display': True}
        token.map = [start, nextline]
        state.line = nextline
        return True
    def render_math(tokens, index, options, env):
        token = tokens[index]
        display = token.meta['display']
        tag = 'div' if token.block else 'span'
        return f'<{tag} class="math-node {"display-math" if display else "inline-math"}" data-display="{str(display).lower()}" data-tex="{html.escape(token.content, quote=True)}"></{tag}>'
    def render_ref(tokens, index, options, env):
        identifier = tokens[index].content
        number = numbers[identifier]
        return f'<button class="reference" type="button" data-dependency="{identifier}" aria-controls="inspector" aria-expanded="false">[{number}]</button>'
    md.inline.ruler.before('escape', 'local_math', inline_math)
    md.inline.ruler.before('link', 'local_reference', inline_ref)
    md.block.ruler.before('fence', 'local_math', block_math, {'alt':['paragraph','reference','blockquote','list']})
    md.renderer.rules['local_math'] = render_math
    md.renderer.rules['local_reference'] = render_ref
    return md


def assemble(run):
    manifest_bytes = path_at(run, 'manifest.json').read_bytes()
    manifest = json.loads(manifest_bytes)
    demand(manifest.get('schema_version') == 1, 'Unsupported manifest schema')
    parts = manifest.get('parts', [])
    demand(isinstance(parts, list), 'parts must be a list')
    accepted = {}
    chapters = []
    chapter_map = {}
    sources = []
    review_records = []
    for part in parts:
        identifier = part.get('id')
        demand(isinstance(identifier, str) and ID.fullmatch(identifier) and identifier not in accepted, 'Invalid or repeated part id')
        source_bytes = path_at(run, part['source']).read_bytes()
        source = source_bytes.decode('utf-8')
        review = read_json(run, part['review'])
        review_gate(part, source_bytes, review)
        dependency_bytes = path_at(run, part['dependencies_source']).read_bytes()
        demand(digest(dependency_bytes) == part['dependencies_sha256'] == review.get('dependencies_sha256'), f'{identifier}: mathematical dependency artifact is not bound to this review')
        demand(heading(source) == part['title'], f'{identifier}: missing reviewed title')
        for upstream in part.get('upstream', []):
            prior = accepted.get(upstream['id'])
            demand(prior is not None, f'{identifier}: upstream not earlier in manifest')
            demand(str(prior['version']) == str(upstream['version']) and prior['sha256'] == upstream['sha256'], f'{identifier}: upstream version mismatch')
        reviewed_upstream = review.get('upstream', [])
        demand(reviewed_upstream == part.get('upstream', []), f'{identifier}: review upstream binding mismatch')
        chapter_id = part.get('chapter_id', identifier)
        demand(isinstance(chapter_id, str) and ID.fullmatch(chapter_id), 'Invalid chapter id')
        if chapter_id not in chapter_map:
            if part.get('chapter_title_source'):
                title_bytes = path_at(run, part['chapter_title_source']).read_bytes()
                title_data = json.loads(title_bytes)
                title_review = read_json(run, part['chapter_title_review'])
                demand(title_review.get('source_sha256') == digest(title_bytes), f'{identifier}: chapter title hash mismatch')
                demand(all(title_review.get(axis) == 'pass' for axis in ('correctness', 'faithfulness', 'detail')), f'{identifier}: chapter title not accepted')
                demand(title_review.get('approved_title') == title_data['title'] and identifier in title_data['task_ids'], f'{identifier}: chapter title scope mismatch')
                chapter_title = title_data['title']
            else:
                chapter_title = part.get('chapter_title', part['title'])
                demand(chapter_title == part['title'] or chapter_title == review.get('approved_chapter_title'), f'{identifier}: unreviewed chapter title')
            chapter = {'id':chapter_id, 'title':chapter_title, 'parts':[]}
            chapters.append(chapter)
            chapter_map[chapter_id] = chapter
        else:
            demand(chapters[-1]['id'] == chapter_id, 'Chapter parts must be contiguous')
        chapter_map[chapter_id]['parts'].append(identifier)
        entry = {**part, 'markdown':source, 'chapter_id':chapter_id}
        sources.append(entry)
        accepted[identifier] = entry
        review_records.append({'id':identifier, 'source':part['source'], 'review_path':part['review'], 'record':review})
    dependencies = dependencies_from(run, manifest.get('external_dependencies', []))
    # Formal checks are independent records, joined only after mathematical sources
    # are selected. A version change expires a previous correspondence decision.
    formal = dependencies_from(run, manifest.get('formal_checks', []))
    formal_map = {x.get('dependency_id', x.get('id')):x for x in formal}
    seen = set()
    for dependency in dependencies:
        identifier = dependency.get('id')
        demand(isinstance(identifier, str) and ID.fullmatch(identifier) and identifier not in seen, 'Invalid or repeated external id')
        seen.add(identifier)
        demand(isinstance(dependency.get('used_statement'), str) and dependency['used_statement'], f'{identifier}: missing used_statement')
        dependency['name'] = dependency.get('name', dependency.get('title'))
        demand(isinstance(dependency['name'], str) and dependency['name'], f'{identifier}: missing name')
        check = formal_map.get(identifier)
        formal_keys = ('semantic_status','status','short_reason','full_reason','formal_status','candidates','rounds','reason_kind','evidence','next_search')
        current_version = str(dependency.get('version'))
        if check:
            for key in formal_keys:
                if key in check:
                    dependency[key] = check[key]
            dependency['checked_version'] = check.get('dependency_version', check.get('version'))
            statement_bound = check.get('used_statement_sha256') == digest(dependency['used_statement'])
            source_bound = dependency.get('_source_sha256') is not None and check.get('dependency_source_sha256') == dependency['_source_sha256']
            bound = (statement_bound or source_bound) and str(dependency['checked_version']) == current_version
        else:
            # Embedded correspondence fields must carry the same fixed-statement
            # binding as separate Checker records.
            bound = dependency.get('used_statement_sha256') == digest(dependency['used_statement']) and str(dependency.get('checked_version')) == current_version
        status = dependency.get('semantic_status', dependency.get('status', 'incomplete'))
        status = ALIASES.get(status, status)
        if status != 'incomplete' and not bound:
            status = 'incomplete'
            dependency['short_reason'] = '现有对应核查未绑定当前命题版本及内容，需重新核查。'
            dependency['expired'] = True
        demand(status in STATUSES, f'{identifier}: invalid semantic status')
        dependency['status'] = status
        dependency.setdefault('short_reason', '尚无针对当前命题版本的独立核查结论。')
        dependency.setdefault('formal_status', '依赖未审计')
        dependency.setdefault('rounds', [])
        demand(isinstance(dependency['rounds'], list), f'{identifier}: rounds must be an array')
        dependency['uses'] = []
    numbers = {dependency['id']:index + 1 for index,dependency in enumerate(dependencies)}
    dep_map = {d['id']:d for d in dependencies}
    for entry in sources:
        local_dependencies = read_json(run, entry['dependencies_source'])
        reused_items = local_dependencies.get('reused_dependencies', []) if isinstance(local_dependencies, dict) else []
        for reused in reused_items:
            fixed = dep_map.get(reused['id'])
            demand(fixed is not None, f'{entry["id"]}: missing reused dependency')
            demand(reused['version'] == fixed['version'], f'{entry["id"]}: reused dependency version mismatch')
            demand(reused['used_statement_sha256'] == digest(fixed['used_statement']), f'{entry["id"]}: reused statement hash mismatch')
            for site in reused.get('use_sites', []):
                demand(site['source'] == entry['source'] and site['quote'] in entry['markdown'], f'{entry["id"]}: invalid reused use-site quote')
    md = markdown_engine(numbers)
    counts = Counter()
    pure = bytearray()
    raw = bytearray()
    mappings = []
    for entry in sources:
        source = entry['markdown']
        references = ref_ids(source)
        local_dependencies = dependencies_from(run, [entry['dependencies_source']])
        local_dep_map = {item['id']:item for item in local_dependencies}
        dependency_artifact = read_json(run, entry['dependencies_source'])
        reused_items = dependency_artifact.get('reused_dependencies', []) if isinstance(dependency_artifact, dict) else []
        for reused in reused_items:
            # Its version, statement hash, and exact use-site quote were checked
            # above against this part's reviewed dependency artifact.
            local_dep_map[reused['id']] = dep_map[reused['id']]
        for dependency_id in references:
            demand(dependency_id in local_dep_map, f'{entry["id"]}: reference absent from bound dependency artifact')
            demand(dependency_id in dep_map and str(local_dep_map[dependency_id].get('version')) == str(dep_map[dependency_id].get('version')) and local_dep_map[dependency_id]['used_statement'] == dep_map[dependency_id]['used_statement'], f'{entry["id"]}: assembled dependency differs from reviewed mathematical source')
        for identifier in references:
            demand(identifier in dep_map, f'{entry["id"]}: dangling reference {identifier}')
            counts[identifier] += 1
            dep_map[identifier]['uses'].append({'part_id':entry['id'], 'chapter_id':entry['chapter_id'], 'title':entry['title'], 'occurrence':counts[identifier]})
        if mappings:
            pure.extend(b'\n\n')
            raw.extend(b'\n\n')
        pure_start, raw_start = len(pure), len(raw)
        transformed = reference_text(source, numbers).encode('utf-8')
        pure.extend(transformed)
        raw.extend(source.encode('utf-8'))
        entry['html'] = md.render(source)
        entry['title_html'] = md.renderInline(entry['title'])
        mappings.append({'id':entry['id'], 'version':entry['version'], 'source':entry['source'], 'source_sha256':entry['sha256'], 'review':entry['review'], 'raw_start':raw_start, 'raw_end':len(raw), 'proof_start':pure_start, 'proof_end':len(pure), 'proof_sha256':digest(transformed), 'html_sha256':digest(entry['html'])})
    for chapter in chapters:
        chapter['title_html'] = md.renderInline(chapter['title'])
    title_source = manifest.get('title_source')
    title = ''
    if title_source:
        title_id = title_source if isinstance(title_source, str) else title_source.get('id')
        demand(title_id in accepted, 'title_source must point to an accepted part id')
        title = accepted[title_id]['title']
    elif parts:
        raise ValueError('Nonempty assembly requires reviewed title_source')
    stats = {'dependencies':len(dependencies), 'statuses':{s:sum(d['status'] == s for d in dependencies) for s in STATUSES}, 'incomplete':sum(d['status'] == 'incomplete' for d in dependencies), 'reference_occurrences':sum(counts.values()), 'rounds':sum(len(d['rounds']) for d in dependencies)}
    global_records = []
    for item in manifest.get('global_reviews', []):
        source_path = item if isinstance(item, str) else item['source']
        body = path_at(run, source_path).read_bytes()
        if isinstance(item, dict) and item.get('sha256'):
            demand(item['sha256'] == digest(body), 'Global review hash mismatch')
        global_records.append({'source':source_path, 'sha256':digest(body), 'record':json.loads(body)})
    state = manifest.get('status', 'in_progress')
    if state == 'complete':
        completion = manifest.get('completion', {})
        demand(completion.get('scope_complete') is True, 'Complete status requires explicit scope_complete')
        demand(completion.get('final_part_id') in accepted and sources and sources[-1]['id'] == completion['final_part_id'], 'Complete status requires a final accepted closure part')
        nodes = completion.get('required_nodes', [])
        demand(nodes and {node['id'] for node in nodes} == set(accepted), 'Complete status requires an exhaustive node registry')
        for node in nodes:
            actual = accepted[node['id']]
            demand(node.get('status') == 'complete' and str(node.get('version')) == str(actual['version']) and node.get('sha256') == actual['sha256'], 'A required node is incomplete or stale')
        covered = set()
        demand(global_records, 'Complete status requires global transition reviews')
        for global_record in global_records:
            review = global_record['record']
            demand(all(review.get(axis) == 'pass' for axis in ('correctness','faithfulness','detail')), 'Global review axes must pass')
            demand(all(review.get(key) is True for key in ('target_covered','compatible_choices','no_circularity')), 'Global review must check target, shared choices and acyclicity')
            for identifier, source_hash in review.get('source_hashes', {}).items():
                demand(identifier in accepted and accepted[identifier]['sha256'] == source_hash, 'Global review binds a stale part')
                covered.add(identifier)
        demand(covered == set(accepted), 'Global review hash coverage is incomplete')
    data = {'schema_version':1, 'status':state, 'title':title, 'parts':sources, 'chapters':chapters, 'dependencies':dependencies, 'statistics':stats, 'reviews':review_records, 'manifest_sha256':digest(manifest_bytes), 'global_reviews':global_records, 'engineering':manifest.get('engineering', {}), 'rendering':{'markdown_it_py':importlib.metadata.version('markdown-it-py'), 'local_katex':True}}
    mapping = {'schema_version':1, 'manifest_sha256':digest(manifest_bytes), 'proof_sha256':digest(bytes(pure)), 'raw_sha256':digest(bytes(raw)), 'parts':mappings, 'transform':'Only external reference markers become numbered citations; all other source bytes preserved.'}
    return data, bytes(pure), bytes(raw), mapping


def build(run, check=False):
    data, proof, raw, mapping = assemble(run)
    web = run / 'web'
    template = (run / 'scripts' / 'index.template.html').read_text(encoding='utf-8')
    page = template.replace('{{TITLE}}', html.escape(data['title'] or '证明阅读器'))
    js = serial(data).replace('<', '\\u003c').replace('>', '\\u003e').replace('&', '\\u0026').replace('\u2028','\\u2028').replace('\u2029','\\u2029')
    outputs = {'index.html':page.encode(), 'data.js':('"use strict";\nwindow.PROOF_BUNDLE = '+js+';\n').encode(), 'proof.zh.md':proof, 'source.zh.md':raw, 'assembly-map.json':serial(mapping).encode()}
    for filename, content in outputs.items():
        target = web / filename
        if check:
            demand(target.is_file() and target.read_bytes() == content, f'Out-of-date generated file: {target}')
        else:
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(content)
    # Offline resources are code/font assets only; no old mathematical data or
    # old review conclusions are ever read by this generator.
    vendor = web / 'vendor'
    demand((vendor / 'katex.js').is_file() and (vendor / 'katex.css').is_file(), 'Missing offline KaTeX assets')
    for relative in re.findall(r'url\([\"\']?([^\)\"\']+)', (vendor / 'katex.css').read_text()):
        if relative.startswith('data:'):
            continue
        demand('://' not in relative and not relative.startswith('/'), 'Nonlocal font resource')
        demand((vendor / relative).is_file(), f'Missing font: {relative}')
    report = {'check':True, 'state':data['status'], 'parts':len(data['parts']), 'chapters':len(data['chapters']), 'statistics':data['statistics'], 'manifest_sha256':data['manifest_sha256'], 'outputs':{name:digest(value) for name,value in outputs.items()}, 'mathematical_acceptance':'Not inferred by software; the generator checks review bindings only.', 'browser_test':'Separate validation required.'}
    if not check:
        (run / 'engineering' / 'maker-build.json').write_text(serial(report), encoding='utf-8')
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--run', type=Path, default=RUN)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    try:
        print(serial(build(args.run.resolve(), args.check)), end='')
    except (ValueError, KeyError, OSError, UnicodeError) as error:
        print('Build rejected: '+str(error), file=sys.stderr)
        raise SystemExit(1)

if __name__ == '__main__':
    main()
