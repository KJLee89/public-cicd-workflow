# Public CICD Workflow

This reusable workflow leverages `workflow_calls` to be triggered

This reusable workflow and the workflow that calls this is assumed to be both private repos

Reusable workflow to call from your Python code repo to do the following
1. Lint source code
2. Build Docker container/image
3. Test python code within container


# Cross Repo (Private) Requirements
- CROSS_REPO_TOKEN: This is required when you use private repositories
- Repository settings for the `private` repos must also be configured to allow access


# Inputs for Workflow
- linter (Required) Boolean: `false` to turn off and skip
- platform (Not Required) String: can add but will default to `linux/arm64` if nothing is provided
- CROSS_REPO_TOKEN (Required): Required to use GitHub Actions Plugins
    - Token is only required in the repository that is calling the repo with the reusable workflow
    - Token should have `contents:read` permission enabled


# Dependencies/Utilities
- Super-linter: Linting for your source code
- QEMU: Open-source CPU emulator for testing multiple CPU architectures
- Buildx: Plugin to build container images
