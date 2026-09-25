#!/usr/bin/env bash
# Publish this folder to GitHub Pages. Run `gh auth login` once first.
set -euo pipefail
cd "$(dirname "$0")"

USER=$(gh api user -q .login)

# ./deploy.sh                    -> https://<user>.github.io/
# ./deploy.sh lab                -> https://<user>.github.io/lab/
# ./deploy.sh duke-miai/duke-miai.github.io  -> https://duke-miai.github.io/   (org site)
TARGET="${1:-$USER.github.io}"
case "$TARGET" in
  */*) OWNER="${TARGET%%/*}"; REPO="${TARGET##*/}" ;;
  *)   OWNER="$USER";         REPO="$TARGET" ;;
esac
if [ ! -d .git ]; then
  git init -b main
  git add .
  git commit -m "Lab website: initial version"
fi

if gh repo view "$OWNER/$REPO" >/dev/null 2>&1; then
  git remote get-url origin >/dev/null 2>&1 || git remote add origin "https://github.com/$OWNER/$REPO.git"
  git push -u origin main
else
  gh repo create "$OWNER/$REPO" --public --source=. --push
fi

# Turn Pages on (ignore the error if it is already on).
gh api -X POST "repos/$OWNER/$REPO/pages" \
  -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 || true

if [ "$REPO" = "$OWNER.github.io" ]; then
  echo "Live shortly at: https://$OWNER.github.io/"
else
  echo "Live shortly at: https://$OWNER.github.io/$REPO/"
fi
echo "First build takes ~1 minute. Check: gh api repos/$OWNER/$REPO/pages -q .status"
