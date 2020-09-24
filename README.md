[![Deploy status](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/deploy?label=deploy&logo=Amazon%20AWS)](https://github.com/kaskadi/template-kaskadi-layer/actions?query=workflow%3Adeploy)
[![Build status](https://img.shields.io/github/workflow/status/kaskadi/template-kaskadi-layer/build?label=build&logo=serverless)](https://github.com/kaskadi/template-kaskadi-layer/actions?query=workflow%3Abuild)

<!-- You can add badges inside of this section if you'd like -->

****

# Testing

A `build` workflow (see [here](./.github/workflows/build.yml)) is running on `pull request`. It simply checks the syntax of `serverless.yml` for any errors.

****

# Documentation

This repository comes with a `generate-docs` job inside of the `deploy` workflow that generates documentation automatically for you by reading your main `serverless.yml` configuration file and extracting meta data of all layers you defined. See [here](https://github.com/kaskadi/action-generate-docs) for more information.

If you would like to see the workflow configuration, head [here](./.github/workflows/deploy.yml).

You can configure the template used to generate the action documentation [here](./docs/template.md).

****

# Deploying

Deploying to AWS is done automatically via a `deploy` workflow (see [here](./.github/workflows/deploy.yml)). This workflow will run on `push` to `master`. Before publishing, it checks for syntax error in your `serverless.yml` file.

**You'll have to switch the command from `--version` to `deploy -v` in the [workflow configuration file](./.github/workflows/deploy.yml) to actually deploy!**

**Warning: you may need to manually deploy the first time via `Serverless` CLI locally.**

****

<!-- automatically generated documentation will be placed in here -->
# Resources documentation

The following layers are defined in this repository:
- [template-kaskadi-layer](#template-kaskadi-layer)

## template-kaskadi-layer <a name="template-kaskadi-layer"></a>

### Description

No description found for this layer...

### Dependencies

- `custom-utilities` (local utility)

See [configuration file](./serverless.yml) for more details.
<!-- automatically generated documentation will be placed in here -->

# How to add dependencies to a layer?

1. Go into `layer/nodejs` (`layer` being the path you defined in `serverless.yml` configuration file for your layer)
2. Run `npm i -S <package>` to install any package you need for this layer

# What if I would like to implement custom utilities?

You can use the folder called `custom-utilities`. This folder will be automatically copied into your layer when you run `npm i`. See [here](./layer/nodejs/custom-utilities/) for details.

**Note:** you can rename this folder freely but beware to also update the `postinstall` script inside of your layer `package.json` file (see [here](./layer/nodejs/package.json)).

<!-- You can customize this template as you'd like! -->
