# Introduction

This folder contains examples of how you can use secrets that are defined in GitHub Deployment Environments, in a reusable workflow.
More information about this use case is outlined in following blog post: []()

## Testing

0. Star and fork this repo 😇
1. In the forked repo go to Settings -> Environments and create a [GitHub Deployment Environment](https://docs.github.com/en/actions/how-tos/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment) named `dev`. Direct link to Environments page is `https://github.com/<YOUR_GITHUB_USERNAME>/cloudy-labs/settings/environments`.
2. In newly created deployment environment create a secret named `MY_SECRETY_SECRET` and give it a random value, for example `meowfoobar`. Also, add a deployment environment variable named `MY_TEST_VAR` which will represent a non-sensitive value since the workflow tests both. Give it a random value, for example `Meow!`.
3. Put [parent-workflow.yaml](./parent-workflow.yaml) and [reusable-workflow.yaml](./reusable-workflow.yaml) in [.github/workflows](../../.github/workflows/) folder at the root of the repo.
4. Commit the changes to the forked repo. Navigate to Actions -> Main Workflow and trigger it. The workflow will log if the secret value is set and has expected value (`meowfoobar`). It will also log a value of deployment environment variable. You can change values in your deployment environment for further testing as you please.