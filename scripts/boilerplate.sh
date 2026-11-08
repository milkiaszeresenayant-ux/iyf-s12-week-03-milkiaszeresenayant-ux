#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 || -z "$1" ]]; then
  echo "Usage: ./boilerplate.sh output.html" >&2
  exit 1
fi

output_file=$1
if [[ -e "$output_file" ]]; then
  echo "Error: $output_file already exists; choose a different filename." >&2
  exit 1
fi

cat > "$output_file" <<'EOF'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>New page</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <main>
    <h1>Hello, world!</h1>
  </main>
  <script src="js/main.js" defer></script>
</body>
</html>
EOF
echo "Created $output_file."
