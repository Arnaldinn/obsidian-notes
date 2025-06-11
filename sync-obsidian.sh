#!/bin/bash
cd /home/kalin/Downloads/obsidian-notes || exit

if ! git diff --quiet || ! git diff --cached --quiet; then
  git add .
  git commit -m "Atualização automática $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
fi
