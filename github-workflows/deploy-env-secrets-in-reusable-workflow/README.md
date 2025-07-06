# Introduction

This folder contains examples of how you can reference variables and secrets that are defined in GitHub Deployment Environments and regular repository values, in a reusable workflow.
More information about this use case is outlined in following blog post: []()

## Testing

0. Star and fork this repo 😇
1. In the forked repo go to Settings -> Environments and create a [GitHub Deployment Environment](https://docs.github.com/en/actions/how-tos/managing-workflow-runs-and-deployments/managing-deployments/managing-environments-for-deployment) named `dev`. Direct link to Environments page is `https://github.com/<YOUR_GITHUB_USERNAME>/cloudy-labs/settings/environments`.
2. In newly created deployment environment create a secret named `MY_SECRETY_SECRET` and give it a value `meowfoobar`. Also, add a deployment environment variable named `MY_VAR_TEST`, which will represent a non-sensitive value since the workflow tests both. Give it a random value, for example `Meow!`.
3. In the forked repo go to Settings -> Secrets and variables -> Actions and create a repository secret named `MY_REPO_SECRET` and give it a value `bla`. Also, add a repository variable named `MY_REPO_VAR_TEST`, which will represent a non-sensitive repository value, and give it a random value, for example `Meow from Repo!`.
4. Put [parent-workflow.yaml](./parent-workflow.yaml) and [reusable-workflow.yaml](./reusable-workflow.yaml) in [.github/workflows](../../.github/workflows/) folder at the root of the repo.
5. Commit the changes to the forked repo. Navigate to Actions -> Main workflow and trigger it on main branch. With help of [validate-input.sh](../../util-scripts/validate-input.sh) the workflow will validate if the all secret values are set and have expected values (`meowfoobar` and `bla`). It will also log values of deployment environment and repository variables which represent non-sensitive values. You're welcome to change values, both in repository/deployment environment and in the reusable workflow, for further testing as you please.