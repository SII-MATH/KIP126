#!/usr/bin/env python3
"""Exercise the delivered data in Chromium, including a fully offline file:// run."""
import json
from pathlib import Path
from playwright.sync_api import sync_playwright

ROOT = Path(__file__).resolve().parent
DATA = json.loads((ROOT / 'data/explorer.json').read_text())
checks, errors, failed_requests, outside_requests, console_errors, failed_responses = [], [], [], [], [], []


def check(name, condition):
    checks.append({'name': name, 'passed': bool(condition)})
    assert condition, name


with sync_playwright() as playwright:
    browser = playwright.chromium.launch(headless=True, args=['--no-sandbox'])
    context = browser.new_context(viewport={'width': 1512, 'height': 1050}, device_scale_factor=1)
    page = context.new_page()
    page.on('pageerror', lambda error: errors.append(str(error)))
    page.on('console', lambda message: console_errors.append(message.text) if message.type == 'error' else None)
    page.on('response', lambda response: failed_responses.append({'url': response.url, 'status': response.status}) if response.status >= 400 else None)
    page.on('requestfailed', lambda request: failed_requests.append({'url': request.url, 'error': request.failure}))
    page.on('request', lambda request: outside_requests.append(request.url) if request.url.startswith('http') and not request.url.startswith('http://127.0.0.1:8765/') else None)
    page.goto('http://127.0.0.1:8765/web/', wait_until='networkidle')
    page.wait_for_function('Boolean(window.proofExplorer)')
    live = page.evaluate('window.proofExplorer')
    expected = DATA['statistics']
    check('Unique dependencies agree with data', live['statistics']['total'] == expected['total_dependencies'])
    check('Inline reference count agrees with data', live['statistics']['refs'] == expected['reference_occurrences'])
    check('Round count agrees with data', live['statistics']['rounds'] == expected['rounds'])
    check('Scope explicitly says this is not the full theorem proof', '不是' in page.locator('.demo-notice').inner_text())
    check('Three chapters available', len(live['chapters']) == 3)
    check('KaTeX math rendered', page.locator('.katex').count() > 0)
    check('No initial formula errors', page.locator('.katex-error').count() == 0)
    page.screenshot(path=str(ROOT / 'records/preview-desktop.png'), full_page=False)
    first_chapter = page.locator('#location').inner_text()
    page.get_by_role('button', name='下一章 →').click()
    page.wait_for_timeout(120)
    check('Next chapter changes position', page.locator('#location').inner_text() != first_chapter)
    page.get_by_role('button', name='← 上一章').click()
    page.wait_for_timeout(120)
    check('Previous chapter restores position', page.locator('#location').inner_text() == first_chapter)
    for step in DATA['steps']:
        page.goto('http://127.0.0.1:8765/web/#proof/' + step['id'])
        page.wait_for_timeout(100)
        check('Anchor ' + step['id'], page.locator('#' + step['id']).count() == 1)
        check('Math renders in ' + step['id'], page.locator('.katex-error').count() == 0)
    for dep in DATA['dependencies']:
        source_step = dep['used_in'][0]
        page.goto('http://127.0.0.1:8765/web/#proof/' + source_step)
        page.wait_for_timeout(80)
        page.locator('.proof-body .ref-tag').filter(has_text=dep['id']).first.click()
        page.wait_for_timeout(400)
        check('Dependency drawer ' + dep['id'], page.locator('#drawer').get_attribute('aria-hidden') == 'false')
        check('Drawer formula ' + dep['id'], page.locator('#drawer .katex-error').count() == 0)
        check('Recorded rounds visible ' + dep['id'], page.locator('#drawer .round').count() == len(dep['rounds']))
        for index, recorded_round in enumerate(dep['rounds']):
            round_panel = page.locator('#drawer .round').nth(index)
            if round_panel.get_attribute('open') is None:
                round_panel.locator(':scope > summary').click()
            check(f"Round {index + 1} expands for {dep['id']}", round_panel.get_attribute('open') is not None)
            if recorded_round['candidates']:
                type_panel = round_panel.locator('details').first
                type_panel.locator(':scope > summary').click()
                check(f"Candidate type is readable for {dep['id']} round {index + 1}", type_panel.locator('pre').first.is_visible() and bool(type_panel.locator('pre').first.inner_text()))
        if dep['id'] == DATA['dependencies'][0]['id']:
            page.locator('#drawer-content').evaluate('(element) => element.scrollTop = 0')
            page.screenshot(path=str(ROOT / 'records/preview-annotation.png'), full_page=False)
        page.locator('#drawer .used-links a').first.click()
        page.wait_for_timeout(100)
        check('Return to proof ' + dep['id'], page.locator('#drawer').get_attribute('aria-hidden') == 'true' and source_step in page.url)
    page.goto('http://127.0.0.1:8765/web/#dependencies')
    page.wait_for_timeout(100)
    page.get_by_role('searchbox', name='搜索依赖').fill('EXT-001')
    check('Search by ID', page.locator('.dependency-card').count() == 1)
    page.get_by_role('searchbox', name='搜索依赖').fill('a keyword with no matches')
    check('Empty search state', page.locator('.dependency-card').count() == 0)
    page.get_by_role('searchbox', name='搜索依赖').fill('')
    for status in ['passed', 'not_found', 'failed', 'pending']:
        page.get_by_label('按对应核查状态筛选').select_option(status)
        expected_count = expected['status_counts'][status]
        if status == 'pending':
            expected_count += expected['status_counts']['incomplete']
        check('Status filter ' + status, page.locator('.dependency-card').count() == expected_count)
    page.get_by_label('按对应核查状态筛选').select_option('')
    for category in sorted({d['category'] for d in DATA['dependencies']}):
        page.get_by_label('按依赖类别筛选').select_option(category)
        check('Category filter ' + category, page.locator('.dependency-card').count() == sum(d['category'] == category for d in DATA['dependencies']))
    page.goto('http://127.0.0.1:8765/web/#issues')
    page.wait_for_timeout(100)
    check('Math and formal problems have separate headings', page.get_by_role('heading', name='数学审查与论证范围').count() == 1 and page.get_by_role('heading', name='Lean 对应与证明状态限制').count() == 1)
    page.set_viewport_size({'width': 390, 'height': 844})
    page.goto('http://127.0.0.1:8765/web/')
    page.wait_for_timeout(100)
    check('Mobile body does not overflow horizontally', page.evaluate('document.documentElement.scrollWidth <= innerWidth + 1'))
    page.screenshot(path=str(ROOT / 'records/preview-mobile.png'), full_page=True)
    page.locator('.proof-body .ref-tag').first.click()
    page.wait_for_timeout(100)
    check('Mobile drawer opens', page.locator('#drawer').get_attribute('aria-hidden') == 'false')
    page.get_by_role('button', name='关闭依赖详情').click()
    page.wait_for_timeout(100)
    check('Mobile drawer closes', page.locator('#drawer').get_attribute('aria-hidden') == 'true')
    context.set_offline(True)
    page.goto((ROOT / 'web/index.html').as_uri(), wait_until='load')
    page.wait_for_function('Boolean(window.proofExplorer)')
    check('Offline file URL works', page.locator('.katex').count() > 0 and page.locator('.katex-error').count() == 0)
    check('No external network requests', not outside_requests)
    check('No JavaScript errors', not errors)
    check('No console errors', not console_errors)
    check('No unsuccessful resource responses', not failed_responses)
    check('No failed resource requests', not failed_requests)
    browser.close()

result = {'checks': checks, 'count': len(checks), 'errors': errors, 'console_errors': console_errors, 'failed_responses': failed_responses, 'failed_requests': failed_requests, 'external_requests': outside_requests, 'browser': 'Playwright Chromium', 'viewports': ['1512x1050', '390x844'], 'offline_file_protocol': True}
(ROOT / 'records/browser-validation.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n')
print(json.dumps(result, ensure_ascii=False, indent=2))
