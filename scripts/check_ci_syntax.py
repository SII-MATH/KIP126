#!/usr/bin/env python3
"""Check automation syntax without installing Lean or executing candidate scripts."""

from __future__ import annotations

import pathlib
import re
import subprocess

import yaml


ROOT = pathlib.Path(__file__).resolve().parents[1]


def check(root: pathlib.Path = ROOT) -> None:
    for path in sorted((root / "scripts").rglob("*.py")):
        # Do not write __pycache__ into the inputs used by the build contract.
        compile(path.read_bytes(), str(path), "exec")
    for path in sorted((root / "scripts").rglob("*.sh")):
        subprocess.run(["bash", "-n", str(path)], check=True)
    for path in sorted((root / ".github/workflows").glob("*.yml")):
        workflow = yaml.safe_load(path.read_text())
        for job in workflow.get("jobs", {}).values():
            for step in job.get("steps", []):
                if "run" not in step:
                    continue
                shell = step.get("shell", job.get("defaults", {}).get("run", {}).get(
                    "shell", workflow.get("defaults", {}).get("run", {}).get("shell", "bash")
                ))
                if shell not in ("bash", "sh"):
                    raise ValueError(f"{path}: unsupported shell {shell!r}")
                # GitHub evaluates these before the shell sees the step. This
                # checks quoting/heredocs; actionlint checks expression semantics.
                script = re.sub(r"\$\{\{.*?\}\}", "EXPRESSION", step["run"], flags=re.S)
                result = subprocess.run([shell, "-n"], input=script, text=True,
                                        capture_output=True)
                if result.returncode:
                    raise ValueError(f"{path}: {step.get('name', step.get('id'))}: {result.stderr}")


if __name__ == "__main__":
    check()
    print("Python, shell, and embedded workflow scripts passed syntax checks.")
