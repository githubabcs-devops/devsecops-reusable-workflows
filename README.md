<div align="center">
<h1>reusable-workflows</h1>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)][github]
[![GitHub Issues](https://img.shields.io/github/issues/advanced-security/reusable-workflows?style=for-the-badge)][github-issues]
[![GitHub Stars](https://img.shields.io/github/stars/advanced-security/reusable-workflows?style=for-the-badge)][github]
[![Licence](https://img.shields.io/github/license/Ileriayo/markdown-badges?style=for-the-badge)][license]

</div>

## Overview

This repository contains a number of Reusable [GitHub Actions][github-actions] Workflows used by the [Advanced Security organisation][advanced-security-org].

## ✨ Features

### [Labeler][workflow-labeler]

Automatically label pull requests based on the paths that were modified.

<details>
<summary>Usage</summary>

```yaml
uses: advanced-security/reusable-workflows/.github/workflows/labeler.yml@main
with:
  version: v5  # default: v5
```
</details>

### [Dependency Review][workflow-dependency-review]

Making Dependency Review easy for your projects to use and maintain.

<details>
<summary>Usage</summary>

```yaml
uses: advanced-security/reusable-workflows/.github/workflows/dependency-review.yml@main
```
</details>

### [Python - Build][workflow-python-build]

Help to build, test, and lint Python projects.

<details>
<summary>Usage</summary>

```yaml
    uses: advanced-security/reusable-workflows/.github/workflows/python-build.yml@main
    with:
      # The Action will try to determine 
      install: true
      build: true
      test: true
      lint: true
```
</details>


## Maintainers / Contributors

- [@GeekMasher](https://github.com/GeekMasher) - Author / Core Maintainer

## Support

Please create [GitHub Issues][github-issues] if there are bugs or feature requests.

## License

This project is licensed under the terms of the MIT open source license.
Please refer to [MIT][license] for the full terms.

<!-- Resources -->
[github]: https://github.com/advanced-security/reusable-workflows
[github-issues]: https://github.com/advanced-security/reusable-workflows/issues
[advanced-security-org]: https://github.com/advanced-security
[github-actions]: https://docs.github.com/en/enterprise-cloud@latest/actions
[license]: ./LICENSE

[workflow-dependency-review]: ./.github/workflows/dependency-review.yml
[workflow-python-build]: ./.github/workflows/python-build.yml
[workflow-labeler]: ./.github/workflows/labeler.yml
