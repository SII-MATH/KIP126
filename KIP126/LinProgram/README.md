# LinProgram fixed-data pipeline

This directory is independent of the three proof layers. It owns the pinned
CSV and database artifacts, manifests and hashes, deterministic translators,
generated Lean tables, parameterized interpretation code, and certificates
whose statements concern only those fixed artifacts.

It does not own a stage axiom and does not by itself identify a table row,
coordinate, product, or square with the selected mathematical model. Such
fixed-model comparison and certification obligations belong to `Interface`;
the resulting computation delivery is stated by the project interface and is
consumed by `Main`.

The current files were moved here without changing their declarations. Some
older interpretation modules still expose compatibility APIs that mention the
model-facing interfaces. Their later semantic split must preserve the pinned
data and the exact delivered statements rather than treating this directory
as proof that the comparison has been established.
