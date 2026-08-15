# AGENTS.md

This project uses Just. Use the following `justfile` commands for code quality checks:

- **Test suite**: `just test [--python VERSION] -- [ARGS]`
  - Use `--python` to run for specific Python version
  - Positional arguments after `--` are passed to pytest. Use to pass pytest flags like `-vv` or to run on specific paths.
- **Linting**: `just lint [ARGS]`
  - Positional arguments are passed to Ruff. Use to run on specific paths.
- **Formating**: `just format [ARGS]`
  - Positional arguments are passed to Ruff. Use to run on specific paths.
- **Static typechecking**: `just typecheck [--python VERSION] -- [ARGS]`
  - Use `--python` to run for specific Python version
  - Positional arguments after `--` are passed to the typechecker. Use to run on specific paths.

This project uses uv for managing Python environments. Use `uv run` instead of `python` to run Python code.
