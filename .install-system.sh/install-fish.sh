#!/usr/bin/env sh
set -e

sudo pacman -S fish
fish -c "curl -sL https://git.io/fisher | source && fisher update"
fish # Start fish shell (hopefully my config doesn't depend on nonexistent programs)
