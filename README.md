![](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/deploy?label=deployed&logo=Amazon%20AWS)
<!-- Only for branches which are not release/** or master -->
<!-- ![](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/test?label=test&logo=serverless) -->

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

# What is this layer for?

:point_right: **Describe here what the layer is achieving** :point_left:

# How to install modules?

1. Go into `layer/nodejs`
2. Run `npm i -S <package>` to install any package you need for this layer
