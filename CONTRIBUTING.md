# How to Contribute to Gamou

Gamou is a fully open source project. See the [LICENSE](./LICENSE) file for licensing information.

---

### Getting starter

We are very happy with your interest in collaborating on the project, before starting read this guide carefully. Before submitting any pull request see the [issues](https://github.com/vczb/gamou/issues) guide, if your demand is not there create a new one and wait for approval for development.

We use [kanban](https://github.com/vczb/gamou/projects/1) as a workflow, take a look there and see what's going on

### First prepare you setup

---

Importantly, add an [SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to your github account.

Make sure your git has user and email settings

```
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "email@example.com"
```

Then clone the repository

```
git clone -o upstream git@github.com:vczb/gamou.git
```

[Fork](https://docs.github.com/en/github/getting-started-with-github/quickstart/fork-a-repo) the repository

Add remote origin

```
git remote add origin git@github.com:<YOUR GITHUB USERNAME>/gamou.git
```

Complete the installation step as per the guide in the [README](./README.md)

### Development

---

**Whenever you send a pull request you must follow this work flow**

Rebase with upstream

```
git checkout main
git fetch upstream
git rebase upstream/main
```

Create a new branch

```
git checkout -b MY-BRANCH-NAME
```

After making all the code modifications, you must run the tests and validations

RSpec tests

```
rspec
```

Prettier validate

```
yarn prettier:check
```

Submit a Pull Request

```
git push upstram MY-BRANCH-NAME
```

A link will be generated and you will be forwarded to your project on github, do a new code check and then accept the pull request

the [github-actions](https://docs.github.com/en/actions) will execute the [CI](https://github.com/vczb/gamou/actions), if the workflow is completed successfully, Heroku will generate a [review](https://devcenter.heroku.com/articles/github-integration-review-apps) link of your branch

Wait for our approval, or request for review.

---

### Upgrading your origin with upstream

Switch to main branch

```
git checkout main
```

Fetch upstream updates

```
git fetch upstream
```

Reset hard as main

```
git reset --hard upstream/main
```

Push to the origin

```
git push origin main
```

---

If you have any questions, please open an [issue](https://github.com/vczb/gamou/issues)

## Thank you
