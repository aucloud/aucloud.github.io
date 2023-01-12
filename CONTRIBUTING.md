## Contributing in General
Our project welcomes external contributions.
If you see somewhere were there is a bug please feel free to fix it!
However, by design this project has a limited scope as a demonstration.

To contribute code or documentation, please submit a [pull request](https://github.com/aucloud/aucloud.github.io/pulls).

This project has adopted the [Contributor Covenant Code of Conduct](https://github.com/aucloud/aucloud.github.io/blob/main/CODE_OF_CONDUCT.md), for the community surrounding this project.

### Build system and validation
This docs website leverages [`MkDocs`](https://www.mkdocs.org/), [`Material for MkDocs`](https://squidfunk.github.io/mkdocs-material/), along with [a number of plugins](https://github.com/aucloud/aucloud.github.io/blob/main/requirements.txt) to build the website. The github actions workflows [will validate](https://github.com/aucloud/aucloud.github.io/actions/workflows/public_validation.yml) the markdown content:

1. Markdown can be transformed successfully to HTML
2. Does not contain any invalid links or missing images

Contributors can validate locally using `make docs-validate` after installing dependencies with `make install`.

### Local development requirements
`MkDocs` is a python package. *most* dependencies are system independent and installable using `make install` or `pip install -r requirements.txt`.
However, the social previews require `cairosvg`, which depends on a number of system libraries. [Instructions](https://squidfunk.github.io/mkdocs-material/setup/setting-up-social-cards/#linux) are provided by Material for MkDocs on installing those dependencies.

On MacOS - `make osx-deps` will use brew to install the dependencies, which relies on [homebrew](https://brew.sh/)

On Ubuntu or debian: `make ubuntu-deps` with sufficient (`sudo`) rights.

### Developer Certificate of Origin
Contributors to this project are expected to sign off on the Linux's foundations Developer Certificate of Origin, applied to this project.
DCOBot checks whether commits have been `--signoff`'ed. Contributors *may* as an alternative, Signoff in their pull request.

### Merge approval
The project maintainers use LGTM (Looks Good To Me) in comments on the code review to indicate acceptance. A change requires LGTMs from one of the maintainers.
