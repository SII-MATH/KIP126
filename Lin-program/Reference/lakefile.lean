import Lake

open Lake DSL

package LinProgramReference where
  version := v!"0.1.0"
  packagesDir := "../../KIP126/.lake/packages"

require mathlib from "../../KIP126/.lake/packages/mathlib"

@[default_target]
lean_lib LinProgramReference where
  globs := #[.andSubmodules `LinProgramReference]
