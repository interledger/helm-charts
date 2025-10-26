## Table of Contents

- [Interledger Kubernetes Helm Charts](#interledger-kubernetes-helm-charts)
- [Usage](#usage)
- [Contributing to this repository](#contributing-to-this-repository)
  - [Before you begin](#before-you-begin)
  - [Types of contributions](#types-of-contributions)
    - [:mega: Discussions](#mega-discussions)
    - [:beetle: Issues](#beetle-issues)
    - [:hammer_and_wrench: Pull requests](#hammer_and_wrench-pull-requests)
  - [Reporting Issues](#reporting-issues)
  - [Submitting Pull Requests](#submitting-pull-requests)
  - [Review Process](#review-process)
- [License](#license)
- [Helm charts build status](#helm-charts-build-status)
  
# Interledger Kubernetes Helm Charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Release Charts](https://github.com/interledger/helm-charts/actions/workflows/release.yaml/badge.svg?branch=main)](https://github.com/interledger/helm-charts/actions/workflows/release.yaml)

This functionality is in alpha and is subject to change. The code is provided as-is with no warranties.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add interledger https://interledger.github.io/helm-charts
```

You can then run `helm search repo interledger` to see the charts.

# Contributing to this repository

The source code of all [Interledger](https://interledger.org) community can be found on Github: <https://github.com/interledger/helm-charts/>

## Before you begin

- Have you read the [code of conduct](code_of_conduct.md)?
- Check out the [existing issues](https://github.com/interledger/helm-charts/issues) & see if we [accept contributions](#types-of-contributions) for your type of issue.

## Types of contributions

You can contribute to helm-charts in several ways.

### :mega: Discussions

Discussions are where we have conversations about helm-charts.

If you would like to discuss topics about the broader ecosystem, have a new idea, or want to show off your work - join us in [discussions](https://github.com/interledger/helm-charts/discussions).

### :beetle: Issues

We use GitHub issues to track tasks that contributors can help with. We haven't finalized labels yet for contributors to tackle. If you want to help with work related to an issue, please comment on the issue before starting work on it.

If you've found something that needs fixing, search open issues to see if someone else has reported the same thing. If it's something new, open an issue. We'll use the issue to discuss the problem you want to fix.

### :hammer_and_wrench: Pull requests

Feel free to fork and create a pull request on changes you think you can contribute.

The team will review your pull request as soon as possible.
<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
### Reporting Issues

If you encounter any issues or have a feature request, please create a new issue and provide the following details:

- A clear and descriptive title.
- A detailed description of the issue, including steps   to reproduce if applicable.
- Information about your environment (e.g., operating system, browser, version).
- Any relevant screenshots or error messages.

### Submitting Pull Requests

1. Fork the repository.
2. Create a new branch from main.
3. Make your changes and commit them.
4. Create a pull request (PR) to main.
5. Ensure your PR includes a clear title and description following the Conventional Commits Specification.
6. If your PR addresses an issue, reference the issue in the description using Closes #123.
7. Be patient and be prepared to address feedback and make changes if needed.

### Review Process

- Project maintainers will review your PR for code quality, correctness, and adherence to guidelines.

- Please respond to any feedback promptly and make necessary changes.

- Once the PR is approved, it will be merged into the main branch.



We'd love to have you contribute!

<!-- Please refer to our [contribution guidelines](https://github.com/interledger/helm-charts/blob/main/CONTRIBUTING.md) for details. -->

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->

[Apache 2.0 License](https://github.com/interledger/helm-charts/blob/main/LICENSE).

## Helm charts build status

[![Release Charts](https://github.com/interledger/helm-charts/actions/workflows/release.yaml/badge.svg?branch=main)](https://github.com/interledger/helm-charts/actions/workflows/release.yaml)
