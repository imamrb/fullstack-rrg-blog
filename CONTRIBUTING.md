# CONTRIBUTING

## Branching Model

- **Creating a feature branch**

```bash
git checkout develop
git checkout -b feature_branch

# using the git-flow extension
git flow feature start feature_branch
```

- **Finishing a feature branch**

```bash
git checkout develop
git merge feature_branch

# using the git-flow extension
git flow feature finish feature_branch
```

- **Starting a Release Branch**

```bash
git checkout develop
git checkout -b release/0.1.0

# When using the git-flow extension:
git flow release start 0.1.0 # Switched to a new branch 'release/0.1.0'
```

- **Finishing a Release Branch**

```
git checkout main
git merge release/0.1.0

# using the git-flow extension:
git flow release finish '0.1.0'
```

- **Hotfix Branch**

```bash
# similar to release branch

git flow hotfix start hotfix_branch

git flow hotfix finish hotfix_branch
```

## Commit Message Guideline

The commit message should be structured as follows:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Type

Must be one of the following:

- `docs`: Documentation only changes
- `feat`: A new feature
- `fix`: A bug fix
- `perf`: A code change that improves performance
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `style`: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- `test`: Adding missing tests or correcting existing tests
- `chore`: updating grunt tasks etc; no production code change
- `build`: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- `ci`: Changes to our CI configuration files and scripts (example scopes: Github Actions, CircleCI, Travis)

For more information: https://www.conventionalcommits.org/en/v1.0.0/
