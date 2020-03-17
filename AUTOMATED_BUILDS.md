# How this project automates the build process

This project automatically builds templates on all available remote builders as a part of the CI process.

If you look under `./.github/workflows/` you can find `.yml` files for each remote builder. Each of these is set to build when a commit is pushed that is tagged with `release-*`, which is to say any tag that begins with "release-" will trigger an automated build.

Additionally, the badges on the README.md will update automatically to reflect the status of each remote builder.

What follows is how to setup automated builds on a forked version of this repo.

## Supported remote builders:
* Azure ARM
* DigitalOcean

## To set up automated builds

### Azure ARM:
1. Fork the `homework-webserver-builder` repo in GitHub.
2. In the new repo, click _Settings > Secrets > Add a new secret_. Create new secrets for each of these values that you used to generate templates locally:
    * `ARM_SUBSCRIPTION_ID`
    * `ARM_CLIENT_ID`
    * `ARM_CLIENT_SECRET`
    * `ARM_TENANT_ID`
3. Validate that the rest of the build parameters in `./vars/azure-arm.json` are applicable/suitable for your purposes.
4. Tag a commit as a release `git tag -a release-test -m 'Testing release builds'` and push it to GitHub `git push --tags`
5. A new template will be built in the _resource group_ that you specified with the build name `ubuntu-webserver-base.{{timestamp}}` with _{{timestamp}}_ being the epoch time of the start of the build.

### DigitalOcean:
1. Fork the `homework-webserver-builder` repo in GitHub.
2. In the new repo, click _Settings > Secrets > Add a new secret_. Create new secrets for each of these values that you used to generate templates locally:
    * `DO_API_TOKEN`
3. Validate that the rest of the build parameters in `./vars/digitalocean.json` are applicable/suitable for your purposes.
3. Tag a commit as a release `git tag -a release-test -m 'Testing release builds'` and push it to GitHub `git push --tags`
5. A new snapshot will be built with the name `ubuntu-webserver-base.{{timestamp}}` with _{{timestamp}}_ being the epoch time of the start of the build.

### Further Reading:
* [GitHub Actions](https://github.com/features/actions)
* [How to setup an API token with DigitalOcean](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)
* [$200 / 30 day free trial signup for Azure](https://azure.microsoft.com/en-us/free/)
* [How to setup auth for Azure Resource Manager](https://packer.io/docs/builders/azure.html#authentication-for-azure)
