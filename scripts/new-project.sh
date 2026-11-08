#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 || -z "$1" ]]; then
  echo "Usage: ./new-project.sh project-name" >&2
  exit 1
fi

project_name=$1
mkdir -p "$project_name"/{src/{css,js,images},docs,tests}
cat > "$project_name/README.md" <<EOF
# $project_name

Project notes go here.
EOF
touch "$project_name/src/index.html"
touch "$project_name/src/css/styles.css"
touch "$project_name/src/js/main.js"
echo "Project $project_name created successfully."
