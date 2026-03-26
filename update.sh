#!/bin/bash
set -e

echo "🔄 Updating Chatterbox Fork..."

# Auf master wechseln und aktualisieren
git checkout master
git fetch origin master
git reset --hard origin/master

# Fix-Branch aktualisieren
git checkout sdpa-fix
git rebase master

# Pushen
git push mine sdpa-fix --force-with-lease

echo "✅ Update abgeschlossen!"
