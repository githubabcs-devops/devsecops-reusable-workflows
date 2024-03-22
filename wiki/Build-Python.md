# Python - Build / Publish

## Overview

Automates the following:

- Builds Project
- Runs tests
- Lints code / Type Checker

## Usage

The Action will try to determine how to install, build, test, and lint your project.

**Simple:**

```yaml
uses: advanced-security/reusable-workflows/.github/workflows/python-build.yml@main
```

**With Settings:**

```yaml
uses: advanced-security/reusable-workflows/.github/workflows/python-build.yml@main
with:
  install: true  # Install dependencies (default is true)
  build: false   # Build the project
  test: false    # Run tests
  lint: false    # Run linter

```
