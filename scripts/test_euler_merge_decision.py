#!/usr/bin/env python3

import copy
import importlib.util
import json
import pathlib
import unittest


MODULE_PATH = pathlib.Path(__file__).with_name("euler_merge_decision.py")
SPEC = importlib.util.spec_from_file_location("euler_merge_decision", MODULE_PATH)
assert SPEC and SPEC.loader
merge = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(merge)

HEAD = "a" * 40
RUN = "https://github.com/surenny/KIP126/actions/runs/123"
COMMENT = "https://github.com/surenny/KIP126/pull/21#issuecomment-77"
RUBRIC = "rubric-v1"


def protection():
    return {
        "required_status_checks": {
            "strict": True,
            "contexts": sorted(merge.REQUIRED_CONTEXTS),
            "checks": [
                {"context": context, "app_id": 15368}
                for context in sorted(merge.MECHANICAL_CONTEXTS)
            ]
            + [{"context": "semantic-review", "app_id": None}],
        },
        "required_pull_request_reviews": {"required_approving_review_count": 1},
        "enforce_admins": {"enabled": True},
        "required_linear_history": {"enabled": True},
        "required_conversation_resolution": {"enabled": True},
        "allow_force_pushes": {"enabled": False},
        "allow_deletions": {"enabled": False},
    }


def status(context, state="success", *, creator="github-actions[bot]", ident=1, url=RUN):
    return {
        "id": ident,
        "context": context,
        "state": state,
        "created_at": f"2026-08-14T00:00:{ident:02d}Z",
        "updated_at": f"2026-08-14T00:00:{ident:02d}Z",
        "target_url": url,
        "creator": {"login": creator},
    }


def snapshot():
    semantic_body = "\n".join(
        [
            merge.EULER_MARKER,
            "## Semantic review",
            "<!-- euler-meta:"
            + json.dumps(
                {"head_sha": HEAD, "rubric_revision": RUBRIC, "verdict": "approve"},
                sort_keys=True,
            )
            + " -->",
        ]
    )
    statuses = [status(context, ident=index) for index, context in enumerate(sorted(merge.MECHANICAL_CONTEXTS), 1)]
    statuses.append(status("semantic-review", creator="surenny", ident=9, url=COMMENT))
    return {
        "repository": "surenny/KIP126",
        "pull_request": {
            "number": 21,
            "state": "open",
            "draft": False,
            "title": "AIM-21: theorem wiring",
            "body": "Closes AIM-21",
            "head": {"sha": HEAD, "ref": "worker/aim-21", "repo": {"full_name": "surenny/KIP126"}},
            "base": {"ref": "main", "repo": {"full_name": "surenny/KIP126"}},
            "labels": [],
            "mergeable": True,
            "mergeable_state": "clean",
        },
        "statuses": statuses,
        "comments": [{"id": 77, "html_url": COMMENT, "body": semantic_body, "user": {"login": "surenny"}}],
        "files": [{"filename": "KIP126/Core/New.lean"}],
        "settings": {"allow_auto_merge": True},
        "protection": protection(),
        "queue_entry": None,
    }


def decide(value):
    return merge.evaluate_snapshot(
        value,
        expected_head=HEAD,
        rubric_revision=RUBRIC,
        semantic_trusted_creators={"github-actions[bot]", "surenny"},
    )


class MergeDecisionTests(unittest.TestCase):
    def test_exact_head_green_worker_is_eligible(self):
        self.assertTrue(decide(snapshot())["eligible"])

    def test_stale_live_head_is_rejected(self):
        value = snapshot()
        value["pull_request"]["head"]["sha"] = "b" * 40
        self.assertFalse(decide(value)["eligible"])

    def test_newest_mechanical_failure_wins(self):
        value = snapshot()
        value["statuses"].append(status("build", "failure", ident=20))
        result = decide(value)
        self.assertIn("newest build status is failure", result["reasons"])

    def test_terminal_semantic_failure_is_not_reset_by_older_success(self):
        value = snapshot()
        value["statuses"].append(status("semantic-review", "failure", creator="surenny", ident=20, url=COMMENT))
        result = decide(value)
        self.assertIn("newest semantic-review status is failure", result["reasons"])

    def test_stale_scoreboard_is_rejected(self):
        value = snapshot()
        value["comments"][0]["body"] = value["comments"][0]["body"].replace(HEAD, "b" * 40)
        self.assertIn("semantic scoreboard is stale", decide(value)["reasons"])

    def test_untrusted_semantic_publisher_is_rejected(self):
        value = snapshot()
        value["statuses"][-1]["creator"]["login"] = "mallory"
        value["comments"][0]["user"]["login"] = "mallory"
        self.assertFalse(decide(value)["eligible"])

    def test_initializer_and_validation_heads_are_rejected(self):
        for prefix in merge.EXCLUDED_HEAD_PREFIXES:
            with self.subTest(prefix=prefix):
                value = snapshot()
                value["pull_request"]["head"]["ref"] = prefix + "aim-21"
                self.assertFalse(decide(value)["eligible"])

    def test_out_of_scope_path_is_rejected(self):
        value = snapshot()
        value["files"] = [{"filename": ".github/workflows/review.yml"}]
        self.assertFalse(decide(value)["eligible"])

    def test_exact_single_close_intent_is_required(self):
        value = snapshot()
        value["pull_request"]["body"] = "Related AIM-21"
        self.assertFalse(decide(value)["eligible"])

    def test_missing_required_context_is_rejected(self):
        value = snapshot()
        value["protection"]["required_status_checks"]["contexts"].remove("perf")
        self.assertFalse(decide(value)["eligible"])

    def test_disabled_auto_merge_is_rejected(self):
        value = snapshot()
        value["settings"]["allow_auto_merge"] = False
        self.assertFalse(decide(value)["eligible"])

    def test_hold_label_is_rejected(self):
        value = snapshot()
        value["pull_request"]["labels"] = [{"name": "hold"}]
        self.assertFalse(decide(value)["eligible"])


if __name__ == "__main__":
    unittest.main()
