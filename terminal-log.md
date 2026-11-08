# Terminal Practice Log

These commands were run in Git Bash. File-operation exercises used the
disposable folder `~/week3-terminal-practice-20261108`, not this portfolio.
`rmdir archive/` was expected to fail because the copied directory was not
empty; `rm -r archive/` then removed only that exercise copy.

## Commands Run

| Command | What it did |
|---|---|
| `mkdir -p "$HOME/week3-terminal-practice-20261108/my-project"/src/{css,js,images} "$HOME/week3-terminal-practice-20261108/my-project"/{docs,tests}` | Created the practice project and nested directories. |
| `touch "$HOME/week3-terminal-practice-20261108/my-project/README.md"` | Created the project README. |
| `cd "$HOME/week3-terminal-practice-20261108"` | Opened the scratch folder. |
| `pwd` | Printed the current folder. |
| `ls` | Listed the scratch folder contents. |
| `cd "$HOME/Documents"` | Opened Documents. |
| `cd ..` | Moved to the parent folder. |
| `cd ~` | Returned to the home folder. |
| `cd "$HOME/week3-terminal-practice-20261108"` | Returned to the scratch folder. |
| `touch index.html` | Created a temporary HTML file. |
| `cat index.html` | Displayed the empty file. |
| `cp index.html backup.html` | Copied the temporary file. |
| `mkdir -p docs` | Created a practice destination folder. |
| `mv backup.html docs/` | Moved the copy into `docs`. |
| `mv index.html home.html` | Renamed the temporary file. |
| `rm home.html` | Removed the temporary file. |
| `touch my-project/src/index.html my-project/src/css/styles.css my-project/src/js/main.js` | Created practice starter files. |
| `cp -r my-project/src/ src-backup/` | Copied the source directory. |
| `mv src-backup/ archive/` | Moved the copy to `archive`. |
| `rmdir archive/` | Tried to remove the non-empty directory; it correctly failed. |
| `rm -r archive/` | Removed the copied directory and its contents. |
| `find . -name "*.html"` | Listed HTML files in the scratch folder. |
| `grep -r "contact" .` | Searched scratch files for `contact`; no matches were found. |
| `cd /c/Users/HomePC/Documents/TASKS/week\ 3` | Opened this Week 3 project from Git Bash. |
| `find . -name "*.html"` | Listed HTML files in the project. |
| `grep -rl "contact" --include="*.html" --include="*.css" .` | Listed HTML/CSS files containing `contact`. |
| `wc -l css/styles.css` | Counted CSS lines. |
| `history | tail -10` | Displayed the last ten commands in the interactive shell. |

## Exercise Results

- HTML files in the full workspace: **5** (four portfolio pages and the daily-challenge starter page).
- HTML/CSS files containing `contact`: `about.html`, `contact.html`, `index.html`, `projects.html`, and `css/styles.css`.
- `css/styles.css`: **300 lines**.
- The final ten commands printed by `history | tail -10` were:

```text
mv src-backup/ archive/
rmdir archive/
rm -r archive/
find . -name "*.html"
grep -r "contact" .
cd /c/Users/HomePC/Documents/TASKS/week\ 3
find . -name "*.html"
grep -rl "contact" --include="*.html" --include="*.css" .
wc -l css/styles.css
history | tail-10
```

## Script Verification

The Bash syntax checks and script runs were performed in Git Bash. Generated
files were written only to the same scratch folder.

```bash
bash -n /c/Users/HomePC/Documents/TASKS/week\ 3/scripts/new-project.sh
bash -n /c/Users/HomePC/Documents/TASKS/week\ 3/scripts/boilerplate.sh
bash /c/Users/HomePC/Documents/TASKS/week\ 3/scripts/new-project.sh /c/Users/HomePC/week3-terminal-practice-20261108/generated-app
bash /c/Users/HomePC/Documents/TASKS/week\ 3/scripts/boilerplate.sh /c/Users/HomePC/week3-terminal-practice-20261108/generated.html
```

Both syntax checks passed. Both scripts completed successfully, and the
generated project structure and HTML boilerplate were verified.
