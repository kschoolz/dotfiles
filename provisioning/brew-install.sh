bi() { brew install "$@" && brew bundle dump --force --describe --file="$DOTFILES/Brewfile"; }
