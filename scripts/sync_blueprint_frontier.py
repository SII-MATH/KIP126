#!/usr/bin/env python3
"""Update one bot-owned scheduling comment, only for the current main revision."""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess

MARKER = '<!-- kip126-blueprint-frontier:v1 -->'


def github(repo, endpoint, *, method='GET', payload=None):
    command = ['gh', 'api', '--method', method, f'repos/{repo}/{endpoint}']
    if payload is not None:
        command += ['--input', '-']
    result = subprocess.run(command, input=json.dumps(payload) if payload is not None else None,
                            text=True, capture_output=True, check=True, timeout=45)
    return json.loads(result.stdout)


def publish(repo, sha, run_url, preview, *, api=github):
    if not re.fullmatch(r'[\w.-]+/[\w.-]+', repo) or not re.fullmatch(r'[0-9a-f]{40}', sha):
        raise ValueError('invalid repository or revision')
    if not re.fullmatch(r'https://github\.com/' + re.escape(repo) + r'/actions/runs/[0-9]+', run_url):
        raise ValueError('invalid workflow run URL')
    def current():
        return api(repo, 'commits/main')['sha'] == sha
    if not current():
        return 'skipped stale revision'
    matches = []
    page = 1
    while True:
        comments = api(repo, f'issues/84/comments?per_page=100&page={page}')
        matches += [c for c in comments if c.get('user', {}).get('login') == 'github-actions[bot]'
                    and c.get('body', '').startswith(MARKER)]
        if len(comments) < 100:
            break
        page += 1
    if len(matches) > 1:
        raise ValueError('multiple bot-owned frontier comments; refusing ambiguous update')
    body = f'{MARKER}\nRevision: `{sha}`. [Full JSON/Markdown artifact]({run_url}).\n\n{preview}'
    if len(body) > 60000:
        raise ValueError('frontier preview exceeds comment budget')
    if not current():
        return 'skipped stale revision'
    if matches:
        if matches[0]['body'] == body:
            return 'unchanged'
        api(repo, f"issues/comments/{matches[0]['id']}", method='PATCH', payload={'body': body})
        return 'updated'
    api(repo, 'issues/84/comments', method='POST', payload={'body': body})
    return 'created'


if __name__ == '__main__':
    # Publication is a default-branch action, never a credential-bearing PR step.
    if os.environ.get('GITHUB_EVENT_NAME') not in {'push', 'workflow_dispatch'} or \
            os.environ.get('GITHUB_REF') != 'refs/heads/main':
        raise SystemExit('frontier publication requires a trusted main workflow')
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('preview', type=Path)
    args = parser.parse_args()
    repo = os.environ['GITHUB_REPOSITORY']
    print(publish(repo, os.environ['GITHUB_SHA'],
                  f"https://github.com/{repo}/actions/runs/{os.environ['GITHUB_RUN_ID']}",
                  args.preview.read_text()))
