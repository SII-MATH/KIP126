#!/usr/bin/env python3
"""Actual local consistency, fail-closed gate, and browser checks. No proof claims."""
import argparse
from copy import deepcopy
from datetime import datetime, timezone
import json
from pathlib import Path
import tempfile
import build

RUN=Path(__file__).resolve().parent.parent

def consistency():
    report=build.build(RUN, check=True)
    data,proof,raw,mapping=build.assemble(RUN)
    for record,part in zip(mapping['parts'],data['parts']):
        assert raw[record['raw_start']:record['raw_end']] == build.path_at(RUN,part['source']).read_bytes()
        assert build.digest(proof[record['proof_start']:record['proof_end']]) == record['proof_sha256']
    rejected=[]
    if data['parts']:
        part=data['parts'][0]
        review=build.read_json(RUN,part['review'])
        source=build.path_at(RUN,part['source']).read_bytes()
        for label,mutate in [('wrong_hash',lambda p,r:p.update(sha256='0'*64)),('stale_review_version',lambda p,r:r.update(version='wrong')),('detail_not_pass',lambda p,r:r.update(detail='needs_revision')),('unreviewed_title',lambda p,r:p.update(title='changed title'))]:
            changed_part,changed_review=deepcopy(part),deepcopy(review)
            mutate(changed_part,changed_review)
            try:build.review_gate(changed_part,source,changed_review)
            except ValueError:rejected.append(label)
            else:raise AssertionError('Gate accepted '+label)
    # Validate the global completion gate on a copy containing no mathematical
    # sources; no synthetic mathematical text enters the published reader.
    with tempfile.TemporaryDirectory(prefix='proof-reader-gate-') as folder:
        directory=Path(folder)
        (directory/'manifest.json').write_text(build.serial({'schema_version':1,'status':'complete','parts':[],'external_dependencies':[]}))
        try:build.assemble(directory)
        except ValueError:rejected.append('unsupported_complete_status')
        else:raise AssertionError('Empty complete manifest accepted')
    return {'build_check':True,'part_count':len(data['parts']),'raw_byte_identity':True,'proof_byte_ranges':True,'gate_rejections':rejected,'manifest_sha256':data['manifest_sha256'],'statistics':data['statistics']}

def browser_check(screenshot_dir=None):
    from playwright.sync_api import sync_playwright
    with sync_playwright() as p:
        browser=p.chromium.launch(headless=True,args=['--no-sandbox'])
        page=browser.new_page(viewport={'width':1440,'height':1000},device_scale_factor=1)
        errors=[];remote=[]
        page.on('pageerror',lambda error:errors.append(str(error)))
        page.on('request',lambda request:remote.append(request.url) if request.url.startswith(('http:','https:')) else None)
        page.goto((RUN/'web/index.html').as_uri())
        page.wait_for_timeout(300)
        assert page.evaluate('document.documentElement.scrollWidth<=innerWidth'), 'Desktop horizontal overflow'
        actual=page.evaluate('window.proofReader')
        assert not actual['mathErrors'], actual['mathErrors']
        assert page.locator('.proof-part').count()>=1 or not actual['partIds']
        views=['initial']
        if screenshot_dir:
            page.screenshot(path=str(screenshot_dir/'maker-desktop.png'))
        if actual['partIds']:
            page.locator('#reading-mode').click()
            assert page.locator('.proof-part').count()==len(actual['partIds'])
            assert page.locator('button.reference').count()==actual['statistics']['reference_occurrences']
            views.append('continuous_all_parts')
            middle=page.locator('.proof-part').nth(len(actual['partIds'])//2)
            middle.scroll_into_view_if_needed()
            views.append('current_middle')
            page.locator('.proof-part').last.scroll_into_view_if_needed()
            views.append('current_last_part')
        refs=page.locator('button.reference')
        if refs.count():
            refs.first.click()
            assert page.locator('#inspector').is_visible()
            result=page.get_by_role('heading',name='核查结果',exact=True)
            reason=page.get_by_role('heading',name='关键原因',exact=True)
            assert result.bounding_box()['y'] < 500 and reason.bounding_box()['y'] < 650
            assert page.locator('#inspector details[open]').count()==0
            expected_formal=page.evaluate('window.PROOF_BUNDLE.dependencies[0].formal_status?.summary')
            if expected_formal:
                formal_block=page.get_by_role('heading',name='形式化状态',exact=True).locator('..')
                assert expected_formal in formal_block.inner_text()
                assert '"classifications"' not in formal_block.inner_text(), 'Raw formal evidence leaked into summary'
            if screenshot_dir:page.screenshot(path=str(screenshot_dir/'maker-annotation.png'))
            page.locator('#close-inspector').click()
            views.append('annotation_result_reason_and_closed_evidence')
        page.locator('#tab-references').click()
        page.get_by_role('searchbox',name='搜索引用').wait_for()
        assert page.locator('.dependency-row').count()==actual['statistics']['dependencies']
        search=page.get_by_role('searchbox',name='搜索引用')
        search.fill('a-nonexistent-search-keyword')
        assert page.locator('.dependency-row').count()==0
        search.fill('')
        page.get_by_label('按状态筛选').select_option('incomplete')
        assert page.locator('.dependency-row').count()==actual['statistics']['statuses']['incomplete']
        page.get_by_label('按状态筛选').select_option('')
        if screenshot_dir:page.screenshot(path=str(screenshot_dir/'maker-references.png'))
        views.append('overview_search_status_filter')
        page.set_viewport_size({'width':390,'height':844})
        page.locator('#tab-proof').click()
        if actual['partIds']:page.locator('.proof-part').first.wait_for()
        page.wait_for_timeout(100)
        assert page.evaluate('document.documentElement.scrollWidth<=innerWidth'), 'Phone horizontal overflow'
        refs=page.locator('button.reference')
        if refs.count():
            target=refs.first
            target.scroll_into_view_if_needed()
            before=page.evaluate('scrollY')
            target.click()
            assert page.locator('#inspector').is_visible()
            assert page.locator('#inspector details[open]').count()==0
            assert page.evaluate('document.documentElement.scrollWidth<=innerWidth'), 'Phone annotation overflow'
            if screenshot_dir:page.screenshot(path=str(screenshot_dir/'maker-mobile-annotation.png'))
            page.locator('#close-inspector').click()
            after=page.evaluate('scrollY')
            assert abs(before-after)<=1, {'before':before,'after':after}
            assert target.evaluate('(node)=>node===document.activeElement')
            views.append('phone_annotation_scroll_focus_restored')
        if screenshot_dir:page.screenshot(path=str(screenshot_dir/'maker-mobile.png'))
        views.append('phone_390px_no_overflow')
        assert not errors,errors
        assert not remote,remote
        browser.close()
        return {'executed':True,'engine':'Playwright Chromium','views':views,'javascript_errors':errors,'math_errors':actual['mathErrors'],'remote_requests':remote,'conclusion_test':'No final theorem conclusion is asserted; only the currently assembled last part was checked.'}

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--browser',action='store_true')
    parser.add_argument('--screenshots',action='store_true')
    args=parser.parse_args()
    report={'executed_at':datetime.now(timezone.utc).isoformat(),'consistency':consistency(),'browser':{'executed':False}}
    if args.browser:
        try:report['browser']=browser_check(RUN/'web' if args.screenshots else None)
        except Exception as error:
            report['browser']={'executed':True,'passed':False,'error':str(error)}
            (RUN/'engineering/maker-validation.json').write_text(build.serial(report))
            raise
    (RUN/'engineering/maker-validation.json').write_text(build.serial(report))
    print(build.serial(report),end='')

if __name__=='__main__':main()
