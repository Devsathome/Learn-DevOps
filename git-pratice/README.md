# Git Practice Sandbox: Learning Advanced Git Workflows

This directory serves as a hands-on sandbox for experimenting with Git commands. The repository within (`.git/`) has a history that demonstrates several key concepts.

## Experiment 1: `git rebase` for a Clean History

This experiment demonstrates how to use `git rebase` to maintain a clean, linear history when integrating a feature branch.

### Scenario Setup

1.  **Diverged History:** We intentionally created a scenario where development happened in parallel:
    *   On the `main` branch, a new commit was added to create a `footer.html`.
    *   On a new `login-feature` branch, two commits were added to create a `login.html` file.

2.  **The Goal:** To update the `login-feature` branch with the latest changes from `main` *before* merging, to ensure the final history is easy to follow.

### The Rebase Process

1.  While on the `login-feature` branch, we ran the command:
    ```bash
    git rebase main
    ```

2.  **What `rebase` did:**
    *   It temporarily "put aside" the commits from the `login-feature` branch (`Add username field` and `Add password field`).
    *   It fast-forwarded the `login-feature` branch to be identical to `main`, bringing in the `Add site footer` commit.
    *   It then "re-played" our feature commits one-by-one on top of the newly updated branch.

### Outcome

The `git log --oneline --graph` command revealed the result: a **perfectly linear history**. The commits from our feature branch now appear *after* the work that was done on `main`, making it look like all the work happened sequentially. This creates a much cleaner and more professional commit history than a standard merge commit would have.
