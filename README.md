![](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/update?label=dependencies%20updated&logo=npm)
![](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/deploy?label=deployed&logo=Amazon%20AWS)
<!-- Only for branches which are not release/** or master -->
<!-- ![](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/test?label=test&logo=serverless) -->

****

# :warning: Known issues :warning:

## New element initialization

When creating a new repository based off of this template, a _GitHub Actions_ called `init` should normally run and rename all references of the template name in files to the name of your repository.

It is known that this action sometimes does not run (see [here](https://github.com/kaskadi/template-kaskadi-element/issues/17)).

**Suspected cause:** it seems that `init` is not running in cases where the user would try to manipulate the repository directly after creation. **To minimize risks of bug, please wait a minute or two after your repository creation to make sure that `init` runs.**

**Please report any cases where this happens and detail the steps that led to it.**

**If this happens to you:**
1. `npm i -g kaskadi-cli` (if not installed)
2. `kaskadi init layer`

****

❌ **This section can be deleted when done with all the preliminary work** ❌

# :computer: Creating a new Lambda layer from this template :computer:

**Checklist (delete items when done)**
- create a new repository and choose this repository as template
- clone the new repository to a local working copy
- install all dependencies via `npm i`
- update the `serverless.yml` config file for deployment as needed
- when you feel like your Lambda layer is ready for deployment, go [here](./.github/workflows/deploy.yml) and change the `command` field to `deploy -v`

**Attention:** if you wish to use kaskadi's CLI tools, make sure to have `kaskadi-cli` installed globally (`npm i -g kaskadi-cli`)

****

**This layer is updating its dependencies every Sunday at 7AM CET**

# What is this layer for?

:point_right: **Describe here what the layer is achieving** :point_left:

# How to install modules?

1. Go into `layer/nodejs`
2. Run `npm i -S <package>` to install any package you need for this layer
