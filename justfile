python := shell("cat .python-version")

# Print this help documentation
help:
    just --list

# Sync requirements
sync:
    uv sync

# Run linting (passes through args)
lint *args:
    uv run -- ruff format --check {{args}}
    uv run -- ruff check {{args}}

# Run formatting (passes through args)
format *args:
    uv run -- ruff format {{args}}
    uv run -- ruff check --fix --extend-fixable=F {{args}}

# Run type checking (passes through args)
[arg("python", long)]
typecheck python=python *args:
    uv run --python={{python}} --isolated --no-dev --group typecheck -- \
        ty check --python-version={{python}} {{args}}

# Run test suite (passes through args)
[arg("python", long)]
test python=python *args:
    uv run --python={{python}} --isolated --no-editable --no-dev --group tests --reinstall-package=mypackage -- \
        python -I -m pytest {{args}}
