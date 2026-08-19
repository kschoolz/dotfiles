# Brew

Brew is the package manager I use for MacOS.  This directory records the brew packages installed on a host to allow for them to be installed on a new system.

## Usage 

### Manually

```sh
brew bundle dump --describe --force # Write Brewfile based on what's installed
brew bundle install # install everything in brewfile
brew bundle check --verbose # show whats missing on system
brew bundle cleanup # show whats installed but missing from brewfile
```

### Automatically

Idea: keep brewfile updated by wrapping brew install w/ updating brewfile

```sh
bi() { brew install "$@" && brew bundle dump --force --describe --file="$DOTFILES/Brewfile"; }
```

Then, via cron or otherwise, update git repo for posterity.

