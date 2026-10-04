#!/usr/bin/env python3
"""Verify the immutable KIP-base source archives.

The source archive includes uncommitted changes to all tracked 4.28 files.
An optional local archive also preserves ignored history and local settings.
No files are extracted and no source is executed by this checker.
"""
import argparse
import hashlib
import json
from pathlib import Path
import tarfile

ROOT = Path(__file__).resolve().parents[1]
ARCHIVE = ROOT / "migration/kip-base"


def digest(data):
    return hashlib.sha256(data).hexdigest()


def verify(full_snapshot=False):
    source = json.loads((ARCHIVE / "source-manifest.json").read_text())
    snapshot = [{"path": f["source"], "bytes": f["bytes"], "sha256": f["sha256"]}
                for f in source["files"]]
    with tarfile.open(ARCHIVE / "source-4.28.tar.gz", "r:gz") as tar:
        members = tar.getmembers()
        assert len(members) == len(snapshot), "archive file count changed"
        assert {m.name for m in members} == {f["path"] for f in snapshot}
        for entry in snapshot:
            member = tar.getmember(entry["path"])
            assert member.isfile(), f"unexpected archive type: {member.name}"
            data = tar.extractfile(member).read()
            assert len(data) == entry["bytes"] and digest(data) == entry["sha256"], member.name
    if full_snapshot:
        complete = json.loads((ARCHIVE / "local/snapshot-manifest.json").read_text())
        with tarfile.open(ARCHIVE / "local/working-tree-4.28.tar.gz", "r:gz") as tar:
            assert len(tar.getmembers()) == len(complete)
            assert {m.name for m in tar.getmembers()} == {f["path"] for f in complete}
            for entry in complete:
                member = tar.getmember(entry["path"])
                assert member.isfile(), member.name
                data = tar.extractfile(member).read()
                assert len(data) == entry["bytes"] and digest(data) == entry["sha256"], member.name
        print(f"Full local working-tree backup verified: {len(complete)} files")
    print(f"KIP-base archive integrity: {len(snapshot)} files verified")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--full-snapshot", action="store_true",
                        help="also verify the local backup of ignored/private working files")
    parser.add_argument("--archive-only", action="store_true",
                        help="verify archived source integrity (the default; retained for CI compatibility)")
    args = parser.parse_args()
    verify(full_snapshot=args.full_snapshot)
