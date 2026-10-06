"""Assemble the Checker report from judgments; never changes those judgments."""
import json
from pathlib import Path
OUT = Path(__file__).resolve().parents[1]
checks = json.loads((OUT / 'data/checks.json').read_text())
summary = [{'dependency_id': c['dependency_id'], 'version': c['proposition_version'],
            'rounds': len(c['rounds']), 'status': c['semantic_status']}
           for c in checks]
pending = [c for c in summary if c['status'] == '核查未完成']
report = {
    'role': 'Checker',
    'status': 'completed' if not pending else 'awaiting_final_search_round',
    'information_flow': '仅接收已审定 used_statement 和 Searcher 证据；核查结论交 Master，未反馈给 Reasoner/Judger，未据此修改数学命题。',
    'round_files': [f'data/check-round{n}.json' for n in (1, 2, 3)],
    'completed': [c for c in summary if c not in pending],
    'pending': pending,
    'counts': {s: sum(c['status'] == s for c in summary)
               for s in ['通过', '未通过', '未找到', '核查未完成']},
    'total_judgments': sum(c['rounds'] for c in summary),
    'invariants': [
        '未修改任何数学命题、Lean 声明或论文；以固定全文和 SHA256 检查版本身份。',
        '依据当前源码与实际检索/运行记录独立核查，未复用旧审计结论。',
        '每个命题逐轮交接，最多三轮；通过即停，前轮有候选不因末轮无新候选改记未找到。',
        '语义状态与证明完成度分离；匹配命题定义或接口不等于其证明完成。',
        '缺少比较按证据不足记录，不断言两种数学表示不等或文献定理错误。'],
    'execution_evidence': {
        'baseline': 'records/lean-inspection-approved.log',
        'candidate_files': ['records/LeanCandidates.lean', 'records/lean-candidates.log',
                            'records/LeanAllCandidates.lean', 'records/lean-all-candidates.log'],
        'independently_read': True,
        'result': '最终 127 个 #check 全通过；7 条实际 #print axioms 分别记录；5 个关系 contains 为 true。Final 依赖 sorryAx 与唯一 Challenge2 公理，Interface producer 含 sorryAx。',
        'proved_parts': ['Toda.relation_iff_indeterminacy', 'Toda.juggling',
                         'LinE2.h1_mul_h2_eq_zero', 'LinE2.csv_relation_zero'],
        'sorry_parts_sample': ['Toda.shuffle_iff', 'Computation.Route.sphere_facts',
                               'Computation.Route.high125_detected_choice_unique'],
        'limits': '使用已有构建产物，未执行全仓 clean build；没有把编译通过当作语义或无 sorry 证明。'},
    'independent_data_checks': ['records/checker-raw-coordinate-review.json',
                                'records/checker-relation-review.json',
                                'records/checker-integrity.json'],
    'special_cases': {
        'EXT-006': '无符号 MayContext.Boundary 仅命题定义匹配；不能把带负号的 SignedBoundary 证明视为无符号命题的证明。',
        'EXT-014': '非零 d3 与实际顶底胞腔映射匹配；命中靶的 IsPermanentCycle 不宣称非零 E∞。',
        'finite_page': '球谱有独立消失线关闭 reaches1000 出射尾；Cν 表尚未交付同样的无穷尾。',
        'product': '数据商、actual firstProduct 与 cobar cup 为不同层次；已有比较只在其实际量词范围内使用。'}
}
(OUT / 'reviews/checker.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
print(json.dumps({'status': report['status'], 'counts': report['counts'], 'total_judgments': report['total_judgments']}, ensure_ascii=False))
