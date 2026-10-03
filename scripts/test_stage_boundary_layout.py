"""Check dependency ownership without evaluating any mathematical claim."""

from pathlib import Path
import re
import unittest


ROOT = Path(__file__).resolve().parents[1]


class StageBoundaryLayoutTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = {
            ".".join(path.relative_to(ROOT).with_suffix("").parts):
                re.findall(r"^import\s+(KIP126\.[\w.]+)", path.read_text(), re.M)
            for path in [ROOT / "KIP126.lean", *(ROOT / "KIP126").rglob("*.lean")]
        }

    def dependencies(self, module):
        pending = [module]
        seen = set()
        while pending:
            current = pending.pop()
            if current in seen:
                continue
            self.assertIn(current, self.graph, f"missing internal import: {current}")
            seen.add(current)
            pending.extend(self.graph[current])
        return seen

    def test_all_internal_imports_exist_and_are_acyclic(self):
        done, active = set(), set()

        def visit(module):
            self.assertNotIn(module, active, f"import cycle through {module}")
            if module in done:
                return
            self.assertIn(module, self.graph, f"missing internal import: {module}")
            active.add(module)
            for dependency in self.graph[module]:
                visit(dependency)
            active.remove(module)
            done.add(module)

        for module in self.graph:
            visit(module)

    def test_data_pipeline_does_not_consume_stage_witnesses(self):
        for module in self.graph:
            if module.startswith("KIP126.LinProgram."):
                with self.subTest(module=module):
                    forbidden = [name for name in self.dependencies(module)
                                 if name.startswith(("KIP126.Interface.", "KIP126.Main."))
                                 or name in ("KIP126.Challenge1", "KIP126.Challenge2")]
                    self.assertEqual(forbidden, [])

    def test_delivery_type_and_square_producer_do_not_consume_main(self):
        for module in ("KIP126.Challenge2",
                       "KIP126.Interface.Solution.LinProgram.Square"):
            with self.subTest(module=module):
                forbidden = [name for name in self.dependencies(module)
                             if name.startswith(("KIP126.Main.",
                                                 "KIP126.Interface.Challenge."))]
                self.assertEqual(forbidden, [])

    def test_main_computation_consumes_interfaces_not_producer_implementations(self):
        for module in self.graph:
            if module.startswith("KIP126.Main.Solution.Computation."):
                with self.subTest(module=module):
                    forbidden = [name for name in self.dependencies(module)
                                 if name.startswith("KIP126.Interface.Solution.")
                                 and not name.startswith(
                                     "KIP126.Interface.Solution.StageInput")]
                    self.assertEqual(forbidden, [])

    def test_main_inputs_do_not_import_deductions_or_checks(self):
        for module in self.graph:
            if module == "KIP126.Main.Axiom" or module.startswith("KIP126.Main.Axiom."):
                with self.subTest(module=module):
                    forbidden = [name for name in self.dependencies(module)
                                 if name.startswith(("KIP126.Main.Solution.",
                                                     "KIP126.Main.Challenge.",
                                                     "KIP126.Interface.Challenge.",
                                                     "KIP126.Checks."))
                                 or (name.startswith("KIP126.Interface.Solution.")
                                     and not name.startswith(
                                         "KIP126.Interface.Solution.StageInput"))]
                    self.assertEqual(forbidden, [])

    def test_reference_and_route_specs_do_not_import_project_stages(self):
        modules = [name for name in self.graph
                   if name.startswith("KIP126.Def.References.")]
        modules += ["KIP126.LinProgram.Interpretation.AdamsE2",
                    "KIP126.LinProgram.Interpretation.Route.Predicates"]
        for module in modules:
            with self.subTest(module=module):
                forbidden = [name for name in self.dependencies(module)
                             if name.startswith(("KIP126.Main.", "KIP126.Interface."))]
                self.assertEqual(forbidden, [])

    def test_route_deductions_are_not_certification_dependencies(self):
        goals = {"KIP126.Main.Solution.Computation.Route",
                 "KIP126.Main.Solution.Computation.Lambda"}
        for module in self.graph:
            if module.startswith(("KIP126.Interface.", "KIP126.LinProgram.")) or module in goals:
                with self.subTest(module=module):
                    deps = self.dependencies(module)
                    self.assertFalse(any(name.startswith("KIP126.Main.Challenge.")
                                         for name in deps))
                    if module not in goals:
                        self.assertEqual(deps & goals, set())

    def test_source_and_certification_producers_do_not_consume_main(self):
        for module in ("KIP126.Interface.Solution.Literature.Route.Adapters",
                       "KIP126.Interface.Solution.LinProgram.Route.Certification"):
            forbidden = [name for name in self.dependencies(module)
                         if name.startswith(("KIP126.Main.", "KIP126.Interface.Challenge."))]
            self.assertEqual(forbidden, [])

    def test_new_comparison_data_does_not_hide_unfinished_proofs(self):
        directories = ["ClassicalAdams/Detection/Convergence",
                       "Synthetic/AdamsFiltration/Convergence/Canonical",
                       "Comparison/ClassicalSynthetic/RealizationTower",
                       "Comparison/ClassicalSynthetic/RealizationWeights"]
        for directory in directories:
            for path in (ROOT / "KIP126/Def" / directory).rglob("Data.lean"):
                code = re.sub(r"/-[\s\S]*?-/", "", path.read_text())
                self.assertNotRegex(code, r"\b(sorry|theorem|lemma|axiom)\b", str(path))

    def test_main_inputs_have_no_proof_modules(self):
        self.assertEqual(list((ROOT / "KIP126/Main/Axiom").rglob("Proofs.lean")), [])

    def test_main_input_files_contain_only_statements(self):
        for path in (ROOT / "KIP126/Main/Axiom").rglob("*.lean"):
            code = re.sub(r"/-[\s\S]*?-/", "", path.read_text())
            code = re.sub(r"--[^\n]*", "", code)
            self.assertNotRegex(
                code, r"\b(def|abbrev|theorem|lemma|instance|opaque)\b", str(path))

    def test_interface_input_files_contain_only_statements(self):
        for path in (ROOT / "KIP126/Interface/Axiom").rglob("*.lean"):
            code = re.sub(r"/-[\s\S]*?-/", "", path.read_text())
            code = re.sub(r"--[^\n]*", "", code)
            self.assertNotRegex(
                code, r"\b(def|abbrev|theorem|lemma|instance|opaque)\b", str(path))

    def test_root_challenges_are_flat(self):
        for challenge in ("Challenge1", "Challenge2"):
            path = ROOT / "KIP126" / f"{challenge}.lean"
            self.assertTrue(path.is_file())
            self.assertFalse((ROOT / "KIP126" / challenge).exists())
            code = re.sub(r"/-[\s\S]*?-/", "", path.read_text())
            code = re.sub(r"--[^\n]*", "", code)
            self.assertNotRegex(
                code, r"\b(axiom|theorem|lemma|sorry)\b|Classical\.choice", str(path))

    def test_stage_witnesses_are_selected_in_solution(self):
        expected = {
            ROOT / "KIP126/Interface/Solution/StageInput.lean":
                "Classical.choice KIP126.Interface.Axiom.challenge1",
            ROOT / "KIP126/Main/Solution/StageInput.lean":
                "Classical.choice KIP126.Main.Axiom.challenge2",
        }
        for path, selection in expected.items():
            with self.subTest(path=path):
                self.assertEqual(path.read_text().count("Classical.choice"), 1)
                self.assertIn(selection, path.read_text())

    def test_selected_metadata_stays_in_the_data_pipeline(self):
        self.assertTrue((ROOT / "KIP126/LinProgram/Generated/Selected/records.json").is_file())
        self.assertEqual(list((ROOT / "KIP126/Main").rglob("records.json")), [])

    def test_square_identification_is_delivered_by_the_same_interface(self):
        package = (ROOT / "KIP126/Challenge2.lean").read_text()
        self.assertIn("standard_class : presentation.comparison 2 128", package)
        consumer = (ROOT / "KIP126/Main/Solution/Computation/Comparisons/Classes.lean").read_text()
        self.assertIn("Main.StageInput.computation.sphereSquare.standard_class", consumer)
        self.assertNotIn("sphereAdamsData_eq_computedH6Square_of_ne_zero", consumer)

    def test_challenge_trees_contain_only_stage_targets(self):
        targets = {"Def": "Challenge1", "Interface": "Challenge2",
                   "Main": "h6_sq_permanent"}
        for layer, target in targets.items():
            with self.subTest(layer=layer):
                root = ROOT / "KIP126" / layer / "Challenge"
                self.assertEqual(
                    {str(path.relative_to(root)) for path in root.rglob("*.lean")},
                    {target + ".lean"})
                module = target.replace("/", ".")
                self.assertNotIn(f"KIP126.{layer}.Challenge", self.graph)
                self.assertIn(f"KIP126.{layer}.Challenge.{module}",
                              self.dependencies("KIP126"))
                self.assertIn(f"KIP126.{layer}.Solution.{module}", self.graph)
        # StageInputDeclarations and FixedFinal compare the elaborated boundary
        # types and check that the three Challenge proofs remain placeholders.

    def test_solutions_do_not_depend_on_challenge_placeholders(self):
        challenge_roots = tuple(f"KIP126.{layer}.Challenge"
                                for layer in ("Def", "Interface", "Main"))
        solution_roots = tuple(f"KIP126.{layer}.Solution"
                               for layer in ("Def", "Interface", "Main"))
        for module in self.graph:
            if module in solution_roots or module.startswith(tuple(root + "." for root in solution_roots)):
                with self.subTest(module=module):
                    forbidden = [name for name in self.dependencies(module)
                                 if name in challenge_roots
                                 or name.startswith(tuple(root + "." for root in challenge_roots))]
                    self.assertEqual(forbidden, [])


if __name__ == "__main__":
    unittest.main()
