# Description
<!--- Briefly describe the changes included in this pull request and the paths to the test cases below
 !--- starting with 'Closes #...' if appropriate --->

### Closes #...

# Checklist
<!--- Please read each of the following items and confirm by replacing the [ ] with a [X] --->

### Formatting

- [ ] I have read the [code review guidelines](https://solid-adventure-l491og6.pages.github.io/latest/code-review-guidelines/) and the [code review best practice on GitHub check-list](https://solid-adventure-l491og6.pages.github.io/latest/code-review-best-practices/).

- [ ] The name of the branch is meaningful and well formatted following the [standards](https://solid-adventure-l491og6.pages.github.io/latest/code-review-best-practices/), using \[AD_username (or 5 letters of AD if AD is too long)]-\[brief_description_of_branch].

- [ ] I have verified the branch protection rules before opening this pull request.

### File Updates

- [ ] I have ensured that the version number update follows the [versioning standards](https://solid-adventure-l491og6.pages.github.io/latest/docker-image-versioning/).

- [ ] I have updated the version number in the `Dockerfile` and `README.md` files.

- [ ] I have updated the dependencies and added my name to the maintainer list in the `Dockerfile`.

- [ ] I have updated the feature changes in the `README.md` (optional).

- [ ] I have added the changes included in this pull request to the `CHANGELOG.md` under the next release version or unreleased, and updated the date.

### GitHub Packages Auto Build Rules

- [ ] I have not manually pushed this Docker image to TheBoutrosLab container registry (`ghcr.io/theboutroslab`) on [GitHub](https://github.com/orgs/theboutroslab/packages).

- [ ] **I have updated the `image_name`** in the `metadata.yaml` which is required by GitHub action to automatically build and push the image.
