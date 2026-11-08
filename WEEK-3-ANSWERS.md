# Week 3 Answers and Completion Guide

This file gathers the written answers and the steps for evidence that depends
on your own GitHub account or terminal session. It does not claim that remote,
deployment, or partner tasks have been completed.

## Task 5.1 — Terminal Navigation

Run `pwd` to print the current folder, `ls` to list its contents,
`cd "$HOME/Documents"` to open Documents, `cd ..` to move to the parent
folder, and `cd ~` to return to the home folder.

The project structure for the exercise is created with:

```bash
mkdir -p my-project/src/{css,js,images} my-project/docs my-project/tests
touch my-project/README.md
```

The commands run for the scratch exercise are recorded in
[terminal-log.md](./terminal-log.md). Run them in Git Bash yourself if your
instructor expects evidence from your own terminal history.

## Task 5.2 — File Operations

Use `touch` to create a file, `cat` to view it, `cp` to copy it, `mv` to move
or rename it, and `rm` to remove a file. For directories, `cp -r` copies a
directory, `mv` moves it, `rmdir` removes an empty directory, and `rm -r`
removes a non-empty directory. Practice destructive commands only in the
disposable scratch folder.

## Task 5.3 — Useful Terminal Commands

The full workspace currently contains **5 HTML files**: four portfolio
pages (`index.html`, `about.html`, `projects.html`, and `contact.html`) plus
the daily-challenge starter page.

The current HTML/CSS files containing `contact` are `about.html`,
`contact.html`, `index.html`, `projects.html`, and `css/styles.css`.
`css/styles.css` is **300 lines**. The last ten commands from the practice
session are recorded in [terminal-log.md](./terminal-log.md).

Run these from the repository root in Git Bash to recalculate the answers
after making further changes:

```bash
find . -name "*.html" | wc -l
grep -rl "contact" --include="*.html" --include="*.css" .
wc -l css/styles.css
history | tail -10
```

## Task 5.4 — Shell Scripts

- `scripts/new-project.sh` creates a standard project structure and starter
  files. Run it from Git Bash with
  `bash scripts/new-project.sh my-awesome-app`.
- `scripts/boilerplate.sh` creates an HTML5 file with a viewport meta tag,
  stylesheet link, and deferred JavaScript. Run it with
  `bash scripts/boilerplate.sh sample.html`.

Both scripts require a project name or output filename and stop with a usage
message if the argument is missing. The HTML script does not overwrite an
existing file.

## Task 6.1 — Git Basics

Check your existing identity with `git config --global --list` and
`git config --list`. Set your name and the email associated with your GitHub
account only if needed. Do not use someone else's email.

Practice `git init`, `git status`, `git add`, `git commit`, and `git log` only
in a separate throwaway directory. This workspace has not been connected to a
GitHub repository, so no Git history or commits are claimed here.

Suggested commits after the repository is created and the changes are staged:

1. `Style: add navigation hover underline`
2. `Fix: correct responsive projects grid`
3. `Docs: add terminal log`

Use commits only for changes that you actually staged and committed.

## Task 6.2 — Branching and Merging

Create `feature/about-page`, add or update `about.html`, commit the change,
switch to `main`, merge the branch, then delete it with
`git branch -d feature/about-page`.

For the conflict exercise, create two branches from `main`, change the same
README line differently, merge one branch, then merge the other and resolve
the conflict. Explain the actual decision in the README's “Challenges Faced”
section. No branch or conflict is claimed as completed in this starter.

## Task 6.3 — GitHub Remote Workflow

Create the public repository with the required name using your own GitHub
username. Clone it, verify the `origin` remote with `git remote -v`, and push
the `main` branch. Do not push this workspace until it is in the correct
repository and the required Week 2 portfolio has been copied in.

Use a second clone to practice pushing and pulling. The `.gitignore` in this
workspace excludes common dependency, IDE, OS, and temporary files.

## Task 6.4 — README

The root [README.md](./README.md) includes the project overview, feature list,
technologies, real folder structure, learning notes, next steps, contact
section, collaboration placeholders, and challenges section. Add your
verified identity, GitHub Pages URL, screenshot, and collaboration links
before submitting. Remove any contact detail you do not want to make public.

## Pair Collaboration Lab

This requires your assigned partner, a shared GitHub repository, pull
requests, reviews, and merges. Those actions cannot be honestly completed
without access to the partner and GitHub account. The README marks the links
as pending; replace them only with actual links after the lab.

## Daily Challenges

1. The requested terminal-only structure is in `daily-challenge-1/`.
2. Use `find` and `grep` in Git Bash:
   - CSS files in this project: `find . -type f -name "*.css"`
   - Files changed in the last seven days: `find . -type f -mtime -7`
   - `flex` in CSS: `grep -rn "flex" --include="*.css" .`
   - `div` occurrences in HTML: `grep -rho "div" --include="*.html" . | wc -l`
3. `scripts/boilerplate.sh` generates the required HTML5 starter page.
4. Review the real output of `git log --oneline` and make five genuine,
   focused commits with course-style messages. Do not create empty commits just
   to meet a count.
5. Pin your Week 1–3 repositories, add only accurate tech-stack information
   and learning topics to your profile README, and link the portfolio after
   it is published.

## Before Submission

- Create the GitHub repository with the exact required name and copy in the
  actual Week 2 portfolio if it is available.
- Replace personal-information placeholders with accurate details.
- Enable GitHub Pages and verify the live site.
- Complete and record the real Git history and pair-lab links.
- Capture and add a real screenshot.
