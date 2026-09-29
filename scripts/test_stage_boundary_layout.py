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
            for path in (ROOT / "KIP126").rglob("*.lean")
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
                                 if name.startswith("KIP126.Interface.Solution.")]
                    self.assertEqual(forbidden, [])


if __name__ == "__main__":
    unittest.main()
