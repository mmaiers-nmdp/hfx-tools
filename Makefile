
---

## `pyproject.toml`

```toml
[build-system]
requires = ["setuptools>=68"]
build-backend = "setuptools.build_meta"

[project]
name = "hfx-tools"
version = "0.1.0"
description = "Tools for building, inspecting, and QC'ing HFX submissions"
requires-python = ">=3.10"
dependencies = []

[project.optional-dependencies]
parquet = ["pandas>=2.0", "pyarrow>=14.0"]

[project.scripts]
hfx-pack = "hfx_tools.cli:main"
hfx-qc = "hfx_tools.cli:main"
hfx-inspect = "hfx_tools.cli:main"

[tool.setuptools.packages.find]
where = ["."]
include = ["hfx_tools*"]

