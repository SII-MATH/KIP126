import datetime as dt
import importlib.util
import json
import pathlib


ROOT = pathlib.Path(__file__).resolve().parent.parent
SPEC = importlib.util.spec_from_file_location(
    "status_projection", ROOT / ".github" / "euler" / "status_projection.py"
)
projection = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(projection)
CONFIG = projection.validate_config(
    json.loads((ROOT / ".github" / "euler" / "status-labels.json").read_text(encoding="utf-8"))
)
HEAD = "a" * 40
NOW = dt.datetime(2026, 8, 12, 12, tzinfo=dt.timezone.utc)


def status(
    context,
    state,
    *,
    hours=1,
    creator="github-actions[bot]",
    sha=HEAD,
    target_url="",
    verified_verdict=False,
):
    result = {
        "id": len(context) + hours,
        "sha": sha,
        "context": context,
        "state": state,
        "created_at": (NOW - dt.timedelta(hours=hours)).isoformat(),
        "creator": {"login": creator},
        "target_url": target_url,
    }
    if verified_verdict:
        result["verified_verdict"] = True
    return result


def facts(review=None, **overrides):
    statuses = [status(context, "success") for context in ("scope", "build", "bump-guard")]
    if review is not None:
        statuses.append(review)
    result = {
        "state": "open",
        "merged": False,
        "draft": False,
        "head_sha": HEAD,
        "mergeable": True,
        "mergeable_state": "clean",
        "statuses": statuses,
    }
    result.update(overrides)
    return result


def target(input_facts):
    return projection.reduce_facts(input_facts, CONFIG, NOW)["target_label"]


def test_complete_exact_head_transition_table():
    missing_ci = facts()
    missing_ci["statuses"] = missing_ci["statuses"][:-1]
    assert target(missing_ci) == "awaiting-CI"
    assert target(facts(status("semantic-review", "pending"))) == "review-in-progress"
    assert target(facts()) == "awaiting-review"
    assert target(
        facts(status("semantic-review", "failure", creator="surenny", target_url="https://example.test/review", verified_verdict=True))
    ) == "awaiting-author"
    assert target(
        facts(status("semantic-review", "success", creator="surenny", target_url="https://example.test/review", verified_verdict=True))
    ) == "ready-to-merge"


def test_changed_head_cannot_reuse_old_evidence():
    old = "b" * 40
    input_facts = facts(status("semantic-review", "success", creator="surenny", sha=old, target_url="x", verified_verdict=True))
    input_facts["statuses"] = [
        status(context, "success", sha=old) for context in ("scope", "build", "bump-guard")
    ] + input_facts["statuses"][-1:]
    assert target(input_facts) == "awaiting-CI"


def test_mechanical_failure_and_draft_require_author():
    input_facts = facts()
    input_facts["statuses"][1] = status("build", "failure")
    assert target(input_facts) == "awaiting-author"
    assert target(facts(draft=True)) == "awaiting-author"


def test_review_ttls_expire_to_awaiting_review():
    assert target(facts(status("semantic-review", "pending", hours=7))) == "awaiting-review"
    assert target(
        facts(status("semantic-review", "success", hours=73, creator="surenny", target_url="x", verified_verdict=True))
    ) == "awaiting-review"


def test_error_and_incomplete_verdicts_fail_closed():
    assert target(facts(status("semantic-review", "error"))) == "awaiting-review"
    assert target(facts(status("semantic-review", "success", creator="surenny"))) == "awaiting-review"


def test_untrusted_or_conflicting_evidence_never_becomes_ready():
    input_facts = facts(status("semantic-review", "success", creator="surenny", target_url="x", verified_verdict=True))
    input_facts["statuses"].append(status("semantic-review", "success", creator="mallory", hours=0))
    assert target(input_facts) == "awaiting-review"
    conflicting = facts(status("semantic-review", "success", creator="surenny", target_url="x", verified_verdict=True))
    conflicting["statuses"].append(status("semantic-review", "failure", creator="surenny", target_url="x"))
    assert target(conflicting) == "awaiting-review"


def test_mergeability_is_required_for_ready():
    review = status("semantic-review", "success", creator="surenny", target_url="x", verified_verdict=True)
    assert target(facts(review, mergeable=False, mergeable_state="dirty")) == "awaiting-author"
    assert target(facts(review, mergeable=None, mergeable_state="unknown")) == "awaiting-review"


def test_advisory_failure_does_not_override_explicit_green_merge_gates():
    review = status("semantic-review", "success", creator="surenny", target_url="x", verified_verdict=True)
    assert target(facts(review, mergeable=True, mergeable_state="unstable")) == "ready-to-merge"


def test_closed_pull_request_has_no_status_label():
    assert target(facts(state="closed")) is None
    assert target(facts(state="closed", merged=True)) is None


def test_terminal_semantic_status_requires_verified_scoreboard():
    assert target(facts(status("semantic-review", "success", creator="surenny", target_url="x"))) == "awaiting-review"
    assert target(facts(status("semantic-review", "failure", creator="surenny", target_url="x"))) == "awaiting-review"


def test_scoreboard_metadata_verification_is_exact_head_and_verdict_bound():
    comment = {
        "html_url": "https://example.test/comment",
        "user": {"login": "surenny"},
        "body": (
            projection.REVIEW_MARKER
            + '\n<!-- lean-mas-meta:{"head_sha":"'
            + HEAD
            + '","verdict":"approve"} -->'
        ),
    }
    statuses = [status("semantic-review", "success", creator="surenny", target_url=comment["html_url"])]
    projection._verify_semantic_statuses(statuses, [comment], "owner/repo", 1, HEAD, {"surenny"})
    assert statuses[0]["verified_verdict"] is True
    stale = [status("semantic-review", "success", creator="surenny", target_url=comment["html_url"])]
    projection._verify_semantic_statuses(stale, [comment], "owner/repo", 1, "b" * 40, {"surenny"})
    assert "verified_verdict" not in stale[0]


def test_euler_publication_marker_is_verified():
    comment = {
        "html_url": "https://example.test/euler-comment",
        "user": {"login": "surenny"},
        "body": (
            projection.REVIEW_MARKER
            + '\n<!-- euler-meta:{"head_sha":"'
            + HEAD
            + '","verdict":"approve"} -->'
        ),
    }
    statuses = [status("semantic-review", "success", creator="surenny", target_url=comment["html_url"])]
    projection._verify_semantic_statuses(statuses, [comment], "owner/repo", 1, HEAD, {"surenny"})
    assert statuses[0]["verified_verdict"] is True


def test_tauceti_scoreboard_verification_is_repo_pr_head_and_state_bound():
    def scoreboard(states, heading="approved", head=HEAD):
        metadata = {
            "kind": "scoreboard",
            "repo": "owner/repo",
            "pr": 1,
            "head_sha": head,
            "states": states,
        }
        return {
            "html_url": "https://example.test/tauceti",
            "user": {"login": "surenny"},
            "body": (
                projection.TAUCETI_MARKER
                + f"\n## AI review — {heading}\n"
                + "<!--tauceti-meta:v1 "
                + json.dumps(metadata, separators=(",", ":"))
                + "-->"
            ),
        }

    approved = scoreboard({"correctness": "green", "scope": "green"})
    success = [status("semantic-review", "success", creator="surenny", target_url=approved["html_url"])]
    projection._verify_semantic_statuses(success, [approved], "owner/repo", 1, HEAD, {"surenny"})
    assert success[0]["verified_verdict"] is True

    blocked = scoreboard({"correctness": "green", "reuse": "blocking_block"}, heading="blocked")
    failure = [status("semantic-review", "failure", creator="surenny", target_url=blocked["html_url"])]
    projection._verify_semantic_statuses(failure, [blocked], "owner/repo", 1, HEAD, {"surenny"})
    assert failure[0]["verified_verdict"] is True

    incomplete = scoreboard({"correctness": "green", "reuse": "absent"}, heading="pending")
    ambiguous = [status("semantic-review", "failure", creator="surenny", target_url=incomplete["html_url"])]
    projection._verify_semantic_statuses(ambiguous, [incomplete], "owner/repo", 1, HEAD, {"surenny"})
    assert "verified_verdict" not in ambiguous[0]

    wrong_pr = [status("semantic-review", "success", creator="surenny", target_url=approved["html_url"])]
    projection._verify_semantic_statuses(wrong_pr, [approved], "owner/repo", 2, HEAD, {"surenny"})
    assert "verified_verdict" not in wrong_pr[0]


def test_dispatch_hashes_exact_identity_without_a_trailing_newline():
    workflow = (ROOT / ".github" / "workflows" / "review.yml").read_text(encoding="utf-8")
    assert "KEY=$(jq -jr" in workflow
    assert 'schema: "euler-review.request/v1"' in workflow
    assert 'IDEMPOTENCY_KEY="euler-review-$KEY"' in workflow


def test_explicit_review_retry_uses_a_new_delivery_identity_only():
    workflow = (ROOT / ".github" / "workflows" / "review.yml").read_text(encoding="utf-8")
    assert "grep -qxE '[[:space:]]*/review-retry[[:space:]]*'" in workflow
    assert '[[ "$COMMENT_ID" =~ ^[0-9]+$ ]]' in workflow
    assert 'WEBHOOK_IDEMPOTENCY_KEY="euler-review-retry-$RETRY_KEY"' in workflow
    assert "jq --arg key \"$IDEMPOTENCY_KEY\" '. + {idempotency_key: $key}'" in workflow
    assert '--header "Idempotency-Key: ${{ steps.resolve.outputs.webhook_idempotency_key }}"' in workflow


def test_trusted_check_runs_normalize_into_mechanical_evidence():
    checks = [
        {
            "id": 1,
            "name": "build",
            "head_sha": HEAD,
            "status": "completed",
            "conclusion": "failure",
            "started_at": NOW.isoformat(),
            "completed_at": NOW.isoformat(),
            "app": {"slug": "github-actions"},
            "html_url": "https://example.test/check",
        },
        {
            "id": 2,
            "name": "scope",
            "head_sha": HEAD,
            "status": "in_progress",
            "conclusion": None,
            "started_at": NOW.isoformat(),
            "completed_at": None,
            "app": {"slug": "github-actions"},
        },
        {
            "id": 3,
            "name": "bump-guard",
            "head_sha": HEAD,
            "status": "completed",
            "conclusion": "success",
            "started_at": NOW.isoformat(),
            "completed_at": NOW.isoformat(),
            "app": {"slug": "untrusted"},
        },
    ]
    normalized = projection._normalized_check_statuses(checks, HEAD, {"scope", "build", "bump-guard"})
    assert [(item["context"], item["state"]) for item in normalized] == [
        ("build", "failure"),
    ]


def test_successful_check_run_is_not_required_status_evidence():
    normalized = projection._normalized_check_statuses(
        [
            {
                "id": 1,
                "name": "build",
                "head_sha": HEAD,
                "status": "completed",
                "conclusion": "success",
                "started_at": NOW.isoformat(),
                "completed_at": NOW.isoformat(),
                "app": {"slug": "github-actions"},
            }
        ],
        HEAD,
        {"build"},
    )
    assert normalized == []


def test_check_runs_unwraps_paginated_api_shape():
    original = projection._gh_json
    projection._gh_json = lambda args: [
        {"total_count": 2, "check_runs": [{"id": 1}]},
        {"total_count": 2, "check_runs": [{"id": 2}]},
    ]
    try:
        assert projection._check_runs("owner/repo", HEAD) == [{"id": 1}, {"id": 2}]
    finally:
        projection._gh_json = original


def test_label_changes_are_idempotent_and_preserve_unrelated_labels():
    assert projection.desired_label_changes(
        ["bug", "awaiting-CI", "awaiting-review"], "awaiting-review", CONFIG
    ) == {"remove": ["awaiting-CI"], "add": None}
    assert projection.desired_label_changes(["bug", "awaiting-review"], "awaiting-review", CONFIG) == {
        "remove": [],
        "add": None,
    }


def test_same_name_label_semantic_conflict_stops_install_and_reconcile():
    existing = {
        label["name"]: {
            "name": label["name"],
            "color": label["color"],
            "description": label["description"],
        }
        for label in CONFIG["labels"]
    }
    existing["ready-to-merge"]["description"] = "This label authorizes merge"
    try:
        projection._label_conflicts(existing, CONFIG, require_all=True)
    except projection.ProjectionError as error:
        assert "semantic-conflicts=ready-to-merge" in str(error)
    else:
        raise AssertionError("a same-name semantic conflict was accepted")


if __name__ == "__main__":
    tests = sorted((name, value) for name, value in globals().items() if name.startswith("test_") and callable(value))
    for name, test in tests:
        test()
        print(f"ok: {name}")
    print(f"status projection: {len(tests)} tests passed")
