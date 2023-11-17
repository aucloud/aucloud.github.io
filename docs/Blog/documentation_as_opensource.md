---
title: Relaunching AUCloud's documentation as an open source site.
description: "AUCloud has relaunched it's documentation site from a closed forum, to an open source website managed as code. Read more about the technology and how we manage it using GitHub and GitHub actions."
author: Chris Butler
tags:
  - mkdocs
  - documentation
  - CICD
  - GitHub

---

## Improving client experience using open source
It still surprises me that some enterprise software products do not provide their documentation openly on the internet.
As a technologist, when evaluating technology products, whether open source or proprietary, having a robust understanding of the breadth and depth of documentation (and ease of access) is crucial.

AUCloud has recently relaunched it's [documentation site](https://docs.australiacloud.com.au/latest) as a static website, built from a GitHub repository. A number of the hyperscalers use a similar method for their documentation as:

- The open source documentation core allows users to propose changes to the documentation.
- Documentation hosted on GitHub becomes searchable within GitHub, embedding it within the workspace of developers.

AUCloud has taken this approach, and extended it to be based on a static-website generator: [`mkdocs`](https://www.mkdocs.org/). Using static website generation provides us some clear advantages:

- The static website provides a lower-risk vehicle for hosting the documentation from a security point of view;
- Managing documentation 'as code' allows documentation to be easily integrated in the 'definition of done' in our agile development life cycle;
  - This includes peer review processes implicit in code development platforms.
- The CI/CD process allows pre-flight checks to be integrated such as spell checking and link validation;
- We can build with and contribute back to the extended `mkdocs` ecosystem (such as [`Material for mkdocs`](https://squidfunk.github.io/mkdocs-material))


The result for AUCloud is an documentation site that is fast, easy to maintain, easily searchable and easily updatable.

## Continuous Documentation Integration and Continuous Documentation Delivery (CDI/CDD)
Our DevOps workflows have to provide functionality for two scenarios:

1. The external repository where:
   1. There is only one version of the website (the current `main` branch).
   2. External contributions, which are assumed to be "small" must be validated.
2. A private repository where:
   1. AUCloud employees may need to stage larger contributions (e.g. for an upcoming product launch).
      1. Implicitly this implies providing previews of the staged version of the website.

We serve these from a common repository that is synchronized across our internal GitHub Enterprise Server, and the [`github.com` repository](https://github.com/aucloud/aucloud.github.io). On both of these platforms [GitHub pages](https://docs.github.com/en/pages), is the mechanism for serving internal and external copies of the documentation site.

!!! note "GitHub vs GitHub Enterprise Server"
    Our private repository is hosted on a GitHub Enterprise Server appliance, however, there is no reason why both the private and public repositories could not be hosted on github.com.

On the private repository individual contributors can build their own version of the documentation by simply pushing content to a branch. [`mike`](https://github.com/jimporter/mike), is a complementary tool to MkDocs and Material for MkDocs which provides versioning support. Typically mike is used to support multiple versions of software products. In this case, mike is used to generate a version of the website, per branch pushed to our private repository. On the public repository, this functionality is disabled.

Deletion of a branch [automatically triggers](https://github.com/aucloud/aucloud.github.io/blob/main/.github/workflows/cleanup_branches.yml) cleanup up the branch build.

Pushing to the main branch on the private repository triggers a website release and a corresponding update on our public repository.

The result is that the website can be updated every 5-10 minutes. Currently the largest single time consumer in the build process is validation of external and internal links. While it's slightly slow, we believe it is necessary as it gives our teams early warning when external (or internal) parties are updating their documentation (and we should too!).

### Challenges
Two significant challenges were faced building these pipelines:

- Managing race conditions on the  `gh-pages` branch.
- Bi-directional synchronization of git repositories.

#### Managing race conditions on the  `gh-pages` branch
One gap that we've observed since adopting github actions, is to be careful for introducing any race conditions / circular workflows.
Github actions does expose [concurrency](https://docs.github.com/en/enterprise-cloud@latest/actions/using-jobs/using-concurrency) control mechanisms. However, when dealing with branch based builds of the website we needed `exactly once` semantics for adding and removing the branch releases.
The challenge is you want to remove a branch based build, just as you are updating the release version of the website, and all of these are on the `gh-pages` branch.

As a result we experienced frequent contention issues. Our approach to date is [brute force](https://github.com/aucloud/aucloud.github.io/blob/main/automation/loop_to_push_docs.sh), however, newer features, such as [merge-queues](https://github.blog/changelog/2023-02-08-pull-request-merge-queue-public-beta/) will decrease risk when available.


#### Bi-directional synchronization of git repositories

Due to the multi-repository nature of the pipeline that has been built, the biggest issue is on state synchronization.
Force-pushes can be used to mitigate most problems automatically, however, risk removing contribution history from external parties.
Current approach taken requires a semi-automated process where pull requests from external contributors need to be merged twice: Once on the public repository; once on the private repository.


## Learn more

- [Check out the github actions CICD workflows](https://github.com/aucloud/aucloud.github.io/tree/main/.github/workflows)
- Read more about [`MkDocs`](https://www.mkdocs.org/) and [`Material for MkDocs`](https://squidfunk.github.io/mkdocs-material/)
- Learn more about [`mike`](https://github.com/jimporter/mike) for versioning MkDocs

## About the Author
Dr. Chris Butler is National Manager - IT Strategy and Productisation at AUCloud.
Chris spends his time trying to build cloud native experiences for AUCloud clients and our engineers internally.
