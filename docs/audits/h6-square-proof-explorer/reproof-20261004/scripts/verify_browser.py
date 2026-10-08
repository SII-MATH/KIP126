#!/usr/bin/env python3
"""Exercise the actual offline reader and write reproducible browser evidence."""
from pathlib import Path
from datetime import datetime, timezone
import json
import hashlib
import re
from playwright.sync_api import sync_playwright

ROOT = Path(__file__).resolve().parents[1]
RECORDS = ROOT / 'records'
RECORDS.mkdir(exist_ok=True)
bundle_source = (ROOT / 'web/data.js').read_text()
bundle = json.loads(bundle_source.split('window.EXPLORER = ', 1)[1].removesuffix(';\n'))
math, deps, formal = bundle['math'], bundle['dependencies'], bundle['checks']
source_hashes = {name: hashlib.sha256((ROOT / 'data' / (name + '.json')).read_bytes()).hexdigest() for name in ['math', 'dependencies', 'checks', 'review', 'metadata']}
bundle_hash = hashlib.sha256(bundle_source.encode()).hexdigest()
checks, errors, console, external = [], [], [], []

def check(name, condition):
    checks.append({'name': name, 'passed': bool(condition)})

def matched(dep):
    return next((item for item in reversed(formal) if item['dependency_id'] == dep['id'] and item['proposition_version'] == dep['proposition_version']), {})

with sync_playwright() as pw:
    browser = pw.chromium.launch(headless=True, args=['--no-sandbox'])
    context = browser.new_context(viewport={'width': 1440, 'height': 1000}, offline=True)
    page = context.new_page()
    page.set_default_timeout(9000)
    page.on('pageerror', lambda error: errors.append(str(error)))
    page.on('console', lambda msg: console.append(msg.text) if msg.type == 'error' else None)
    page.on('request', lambda request: external.append(request.url) if request.url.startswith('http') else None)
    url = (ROOT / 'web/index.html').as_uri()

    def visit(fragment=''):
        page.goto(url + fragment)
        page.wait_for_function('Boolean(window.proofReader)')
        page.wait_for_timeout(60)

    visit()
    live = page.evaluate('window.proofReader.statistics')
    check('去重引用统计', live['total'] == len(deps))
    check('引用出现次数', live['occurrences'] == len(math['reference_occurrences']))
    check('实际命题版本轮数', live['rounds'] == sum(len(matched(dep).get('rounds', [])) for dep in deps))
    check('离线公式渲染', page.locator('.katex').count() > 0)
    check('初始批注隐藏', not page.locator('#drawer').is_visible())
    check('初始详情全部折叠', page.locator('details[open]').count() == 0)
    check('主导航恰为证明与引用总览', page.locator('.main-nav a').all_text_contents() == ['证明', '引用总览'])
    check('固定目标标题不含报告标签', '论文证明片段' not in page.locator('#main').inner_text())
    check('独立目标', page.locator('#' + math['target']['id']).count() == 1)
    page.screenshot(path=str(RECORDS / 'preview-desktop.png'))

    for index, chapter in enumerate(math['chapters']):
        visit('#proof/' + chapter['id'])
        check('章节 ' + chapter['id'], page.locator('#' + chapter['id']).count() == 1)
        check('公式 ' + chapter['id'], page.locator('.katex-error').count() == 0)
        check('桌面宽度 ' + chapter['id'], page.evaluate('document.documentElement.scrollWidth <= innerWidth + 1'))
        if index > 0:
            check('后章无重复总标题 ' + chapter['id'], page.locator('#main > h1').count() == 0)
        content = page.locator('.proof-content').evaluate("""el => { const walker = document.createTreeWalker(el, NodeFilter.SHOW_TEXT); let text = '', node; while (node = walker.nextNode()) if (!node.parentElement.closest('.katex,.ref-link')) text += node.textContent; return text; }""")
        check('数学正文纯净 ' + chapter['id'], not re.search(r'EXT-\d|STEP-\d|INT-\d|本\s*demo|Reasoner|Judger|Checker|Maker|Master|Searcher|核查|审查|MainPaper/|&#\w+;|\*\*|`', content))
        if index == len(math['chapters']) // 2:
            page.screenshot(path=str(RECORDS / 'preview-middle.png'))
    conclusion = page.locator('#' + math['conclusion']['id'])
    check('独立结论', conclusion.count() == 1)
    conclusion.scroll_into_view_if_needed()
    page.screenshot(path=str(RECORDS / 'preview-conclusion.png'))

    if len(math['chapters']) > 1:
        visit('#proof/' + math['chapters'][0]['id'])
        page.get_by_role('button', name='下一章 →').click()
        page.wait_for_timeout(80)
        check('下一章', page.locator('#' + math['chapters'][1]['id']).count() == 1)
        page.get_by_role('button', name='← 上一章').click()
        page.wait_for_timeout(80)
        check('上一章', page.locator('#' + math['chapters'][0]['id']).count() == 1)

    for occ in math['reference_occurrences']:
        visit('#proof/' + occ['id'])
        check('引用原句锚点 ' + occ['id'], page.locator('#' + occ['id']).count() == 1 and page.locator('#' + occ['id']).get_attribute('data-dependency') == occ['dependency_id'])

    selected = []
    for dep in deps:
        occ = next((item for item in math['reference_occurrences'] if item['dependency_id'] == dep['id']), None)
        if occ:
            selected.append((dep, occ))
    for index, (dep, occ) in enumerate(selected):
        visit('#proof/' + occ['id'])
        trigger = page.locator('#' + occ['id'])
        trigger.scroll_into_view_if_needed()
        before = page.evaluate('scrollY')
        trigger_top = trigger.bounding_box()['y']
        trigger.click()
        check('开启保留原句视口位置 ' + dep['id'], abs(trigger.bounding_box()['y'] - trigger_top) < 3)
        check('批注四块 ' + dep['id'], page.locator('.annotation-section').count() == 4)
        check('批注初始折叠 ' + dep['id'], page.locator('#drawer details[open]').count() == 0)
        check('上下文突出 ' + dep['id'], page.locator('.reference-context').count() == 1)
        reason = page.locator('.annotation-section').nth(1).bounding_box()
        check('原因首屏可见 ' + dep['id'], reason and reason['y'] + reason['height'] < 1000)
        check('批注公式 ' + dep['id'], page.locator('#drawer .katex-error').count() == 0)
        if index == 0:
            page.screenshot(path=str(RECORDS / 'preview-annotation.png'))
        for selector in ['#source-details', '#lean-details', '#round-details']:
            page.locator(selector + ' > summary').click()
            check('详情展开 ' + dep['id'] + selector, page.locator(selector).get_attribute('open') is not None)
        readable = page.locator('#source-details .readable-statement')
        if readable.count():
            visible_source = readable.evaluate("""el => { const walker = document.createTreeWalker(el, NodeFilter.SHOW_TEXT); let text = '', node; while (node = walker.nextNode()) if (!node.parentElement.closest('.katex')) text += node.textContent; return text; }""")
            check('完整命题无 TeX 残留 ' + dep['id'], not re.search(r'\\[A-Za-z]+|\$', visible_source))
        check('各轮初始折叠 ' + dep['id'], page.locator('.round-record[open]').count() == 0)
        check('轮数详情一致 ' + dep['id'], page.locator('.round-record').count() == len(matched(dep).get('rounds', [])))
        check('完整证据公式 ' + dep['id'], page.locator('#drawer .katex-error').count() == 0)
        if page.locator('.round-record').count():
            page.locator('.round-record > summary').first.click()
            check('轮次可展开 ' + dep['id'], page.locator('.round-record[open]').count() == 1)
        page.locator('#close-drawer').click()
        page.wait_for_timeout(80)
        check('关闭恢复滚动 ' + dep['id'], abs(page.evaluate('scrollY') - before) < 3)
        check('关闭恢复焦点 ' + dep['id'], trigger.evaluate('el => document.activeElement === el'))

    visit('#references')
    check('总览去重行数', page.locator('.reference-row').count() == len(deps))
    page.screenshot(path=str(RECORDS / 'preview-references.png'))
    if deps:
        page.locator('#reference-search').fill(deps[0]['id'])
        check('按编号搜索', page.locator('.reference-row').count() == 1)
        page.locator('#reference-search').fill(str(deps[0]['number']))
        check('纯数字精确编号搜索', page.locator('.reference-row').count() == 1)
    page.locator('#reference-search').fill('没有此关键词987')
    check('空搜索结果', page.locator('.reference-row').count() == 0)
    page.locator('#reference-search').fill('')
    for status in ['通过', '未找到', '未通过', '核查未完成']:
        page.locator('#status-filter').select_option(label=status)
        expected = sum(matched(dep).get('semantic_status', '核查未完成') == status for dep in deps)
        check('状态筛选 ' + status, page.locator('.reference-row').count() == expected)
    page.locator('#status-filter').select_option('')
    for category in sorted({dep['category'] for dep in deps}):
        page.locator('#category-filter').select_option(label=category)
        check('类别筛选 ' + category, page.locator('.reference-row').count() == sum(dep['category'] == category for dep in deps))
    page.locator('#category-filter').select_option('')
    if selected:
        page.locator('.reference-usage a').first.click()
        page.wait_for_timeout(80)
        check('引用返回正文', page.locator('.proof-content').count() == 1 and page.locator('.ref-link:focus').count() == 1)
        page.locator('.ref-link:focus').click()
        check('正文重开引用', page.locator('#drawer').is_visible())
        page.keyboard.press('Escape')
    visit('#review')
    check('独立数学审查入口', '数学审查' in page.locator('#main').inner_text())
    check('审查无公式错误', page.locator('.katex-error').count() == 0)

    for width in [390, 360]:
        page.set_viewport_size({'width': width, 'height': 844})
        for index, chapter in enumerate(math['chapters']):
            visit('#proof/' + chapter['id'])
            check('窄屏章节宽度 ' + str(width) + chapter['id'], page.evaluate('document.documentElement.scrollWidth <= innerWidth + 1'))
            if index == 0:
                check('窄屏目录可折叠 ' + str(width), page.locator('#toggle-toc').is_visible())
                if width == 390:
                    page.screenshot(path=str(RECORDS / 'preview-mobile.png'))
                page.locator('#toggle-toc').click()
                check('窄屏目录展开 ' + str(width), page.locator('#chapter-nav').is_visible())
                page.locator('#toggle-toc').click()
        for index, (dep, occ) in enumerate(selected):
            visit('#proof/' + occ['id'])
            trigger = page.locator('#' + occ['id'])
            trigger.scroll_into_view_if_needed()
            before = page.evaluate('scrollY')
            trigger.click()
            reason = page.locator('.annotation-section').nth(1).bounding_box()
            check('窄屏原因首屏 ' + str(width) + dep['id'], reason and reason['y'] + reason['height'] < 844)
            check('窄屏抽屉无溢出 ' + str(width) + dep['id'], page.evaluate('document.documentElement.scrollWidth <= innerWidth + 1'))
            check('窄屏模态隔离 ' + str(width) + dep['id'], page.locator('.reader-layout').evaluate('el => el.inert') and page.locator('#drawer').get_attribute('aria-modal') == 'true')
            if index == 0:
                page.keyboard.press('Shift+Tab')
                check('窄屏焦点循环 ' + str(width), page.locator('#drawer').evaluate('el => el.contains(document.activeElement)'))
                page.keyboard.press('Tab')
                check('窄屏循环回关闭按钮 ' + str(width), page.locator('#close-drawer').evaluate('el => document.activeElement === el'))
            if width == 390 and index == 0:
                page.locator('#drawer').evaluate('el => el.scrollTop = 0')
                page.screenshot(path=str(RECORDS / 'preview-mobile-annotation.png'))
            page.keyboard.press('Escape')
            page.wait_for_timeout(60)
            check('窄屏恢复滚动 ' + str(width) + dep['id'], abs(page.evaluate('scrollY') - before) < 3)
            check('窄屏恢复焦点 ' + str(width) + dep['id'], trigger.evaluate('el => document.activeElement === el'))
        visit('#references')
        check('窄屏总览宽度 ' + str(width), page.evaluate('document.documentElement.scrollWidth <= innerWidth + 1'))
    check('测试期间打包数据保持不变', hashlib.sha256((ROOT / 'web/data.js').read_bytes()).hexdigest() == bundle_hash)
    check('无 JavaScript 异常', not errors)
    check('无控制台错误', not console)
    check('没有网络请求', not external)
    result = {'executed_at': datetime.now(timezone.utc).isoformat(), 'checks': checks, 'passed': sum(item['passed'] for item in checks), 'total': len(checks), 'errors': errors, 'console_errors': console, 'external_requests': external, 'browser': browser.version, 'viewports': ['1440x1000', '390x844', '360x844'], 'offline_file_protocol': True, 'source_data_sha256_at_start': source_hashes, 'bundled_data_sha256': bundle_hash, 'bundled_statistics': live}
    (RECORDS / 'browser-validation.json').write_text(json.dumps(result, ensure_ascii=False, indent=2))
    print(json.dumps({key: value for key, value in result.items() if key != 'checks'}, ensure_ascii=False))
    failures = [item for item in checks if not item['passed']]
    print('FAILURES', json.dumps(failures, ensure_ascii=False))
    browser.close()
    raise SystemExit(1 if failures else 0)
