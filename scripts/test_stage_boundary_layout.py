"""Stage-0 ownership checks; these check dependencies, not mathematical truth."""

from pathlib import Path
import re
import unittest

ROOT = Path(__file__).resolve().parents[1]
FINAL = "KIP126.Main.Challenge.h6_sq_permanent"
CONTRACT = "KIP126.Interface.Challenge.Challenge2"


def code_only(text):
    return re.sub(r"--[^\n]*", "", re.sub(r"/-[\s\S]*?-/", "", text))


class StageBoundaryLayoutTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = {
            ".".join(path.relative_to(ROOT).with_suffix("").parts):
                re.findall(r"^import\s+(KIP126(?:\.[\w.]+)?)", path.read_text(), re.M)
            for path in [ROOT / "KIP126.lean", *(ROOT / "KIP126").rglob("*.lean")]
        }

    def dependencies(self, module):
        pending, seen = [module], set()
        while pending:
            current = pending.pop()
            if current in seen:
                continue
            self.assertTrue(current in self.graph, f"missing internal import: {current}")
            seen.add(current)
            pending.extend(self.graph[current])
        return seen

    def test_all_internal_imports_exist_and_are_acyclic(self):
        done, active = set(), set()

        def visit(module):
            self.assertNotIn(module, active, f"import cycle through {module}")
            if module in done:
                return
            self.assertTrue(module in self.graph, f"missing internal import: {module}")
            active.add(module)
            for dependency in self.graph[module]:
                visit(dependency)
            active.remove(module)
            done.add(module)

        for module in self.graph:
            visit(module)

    def test_exact_stage_directories(self):
        for stage in ("Interface", "Main"):
            root = ROOT / "KIP126" / stage
            self.assertEqual({p.name for p in root.iterdir() if p.is_dir()},
                             {"Axiom", "Challenge", "Solution"})

    def test_def_never_depends_on_proof_stages(self):
        for module in self.graph:
            if module == "KIP126.Def" or module.startswith("KIP126.Def."):
                with self.subTest(module=module):
                    forbidden = [m for m in self.dependencies(module)
                                 if m.startswith(("KIP126.Interface", "KIP126.Main"))
                                 or m == "KIP126.Challenge2"]
                    self.assertEqual(forbidden, [])

    def test_target_import_closure_is_entirely_def(self):
        # This checks transitive imports, stronger than just the two direct imports.
        for module in self.dependencies(FINAL) - {FINAL}:
            self.assertTrue(module.startswith("KIP126.Def."),
                            f"T(M) imports a non-definition project module: {module}")

    def test_data_pipeline_has_no_stage_or_fixed_model_dependency(self):
        for module in self.graph:
            if module.startswith("KIP126.LinProgram."):
                with self.subTest(module=module):
                    forbidden = [m for m in self.dependencies(module)
                                 if m.startswith(("KIP126.Interface.", "KIP126.Main.",
                                                  "KIP126.Def.StageInput"))
                                 or m in ("KIP126.Challenge1", "KIP126.Challenge2")]
                    self.assertEqual(forbidden, [])

    def test_contract_does_not_consume_main_or_its_own_solution(self):
        forbidden = [m for m in self.dependencies(CONTRACT)
                     if m.startswith(("KIP126.Main.", "KIP126.Interface.Solution."))]
        self.assertEqual(forbidden, [])

    def test_stage_axioms_only_state_the_delivery(self):
        for stage, target in (("Interface", "Challenge1"), ("Main", "Challenge2")):
            root = ROOT / "KIP126" / stage / "Axiom"
            self.assertEqual({p.relative_to(root).as_posix() for p in root.rglob("*.lean")},
                             {target + ".lean"})
            code = code_only((root / (target + ".lean")).read_text())
            self.assertNotRegex(code, r"\b(def|abbrev|theorem|lemma|instance|opaque)\b")
            self.assertEqual(len(re.findall(r"\baxiom\b", code)), 1)

    def test_main_input_closure_has_no_proofs_or_goal_modules(self):
        for module in self.graph:
            if module == "KIP126.Main.Axiom" or module.startswith("KIP126.Main.Axiom."):
                forbidden = [m for m in self.dependencies(module)
                             if m.startswith(("KIP126.Main.Solution.", "KIP126.Main.Challenge.",
                                              "KIP126.Interface.Solution.", "KIP126.Checks."))]
                self.assertEqual(forbidden, [])

    def test_certification_does_not_consume_its_own_output(self):
        # Independent paper-rule proofs may be reused. Selected Main deductions
        # and the Main witness may not feed back into C's producer.
        for module in self.graph:
            if module.startswith("KIP126.Interface.Solution."):
                forbidden = [m for m in self.dependencies(module)
                             if m.startswith(("KIP126.Main.Axiom", "KIP126.Main.Challenge",
                                              "KIP126.Main.Solution.StageInput",
                                              "KIP126.Main.Solution.Computation",
                                              "KIP126.Main.Solution.Route"))]
                self.assertEqual(forbidden, [], module)

    def test_independent_rules_do_not_use_numerical_or_stage_inputs(self):
        for module in self.graph:
            if module.startswith("KIP126.Main.Solution.Tools."):
                forbidden = [m for m in self.dependencies(module)
                             if m.startswith(("KIP126.Main.Axiom", "KIP126.Main.Challenge",
                                              "KIP126.Main.Solution.StageInput",
                                              "KIP126.Main.Solution.Computation",
                                              "KIP126.Interface.Solution.LinProgram"))]
                self.assertEqual(forbidden, [], module)
                code = code_only((ROOT / Path(*module.split('.'))).with_suffix('.lean').read_text())
                self.assertNotRegex(code, r"\b(KIP126\.Challenge2|routeComputation|routeLiterature)\b")

    def test_main_computation_does_not_import_certification_proofs(self):
        for module in self.graph:
            if module.startswith("KIP126.Main.Solution.Computation."):
                self.assertEqual([m for m in self.dependencies(module)
                                  if m.startswith("KIP126.Interface.Solution.")], [], module)

    def test_compatibility_roots_only_export(self):
        for name, target in (("Challenge1", "KIP126.Def.Challenge1"),
                             ("Challenge2", CONTRACT)):
            text = (ROOT / "KIP126" / (name + ".lean")).read_text()
            self.assertEqual(code_only(text).strip(), "import " + target)

    def test_single_final_statement(self):
        root = ROOT / "KIP126/Main/Challenge"
        self.assertEqual({p.relative_to(root).as_posix() for p in root.rglob("*.lean")},
                         {"h6_sq_permanent.lean"})
        code = code_only((root / "h6_sq_permanent.lean").read_text())
        self.assertIn("NonzeroSurvival sphereAdamsData (2, 128) standardH6Square", code)
        self.assertRegex(code, r"theorem h6_sq_permanent\s*:")
        self.assertIn("sorry", code)

    def test_implementation_tracks_do_not_import_final_placeholders(self):
        for module in self.graph:
            if module.startswith(("KIP126.Def.Solution.", "KIP126.Interface.Solution.",
                                  "KIP126.Main.Solution.")):
                self.assertNotIn(FINAL, self.dependencies(module), module)
                self.assertNotIn("KIP126.Def.Challenge.Challenge1", self.dependencies(module), module)
        # Interface/Challenge owns the contract types as requested. Lean's
        # declaration dependency checks separately reject using its goal proof.

    def test_selected_metadata_and_empty_degrees_stay_in_data_pipeline(self):
        self.assertTrue((ROOT / "KIP126/LinProgram/Generated/Selected/records.json").is_file())
        self.assertEqual(list((ROOT / "KIP126/Main").rglob("records.json")), [])
        # Deterministic raw-data checking owns exact counts and rank/coordinates;
        # do not replace it by an assertion that merely counts nonempty rows.
        self.assertTrue((ROOT / "KIP126/LinProgram/Route/selected.json").is_file())

    def test_reference_language_does_not_import_stages(self):
        for module in self.graph:
            if module.startswith("KIP126.Def.References."):
                self.assertEqual([m for m in self.dependencies(module)
                                  if m.startswith(("KIP126.Interface.", "KIP126.Main."))], [])


if __name__ == "__main__":
    unittest.main()
