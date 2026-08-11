# Reduce animation durations for faster window/panel switching
defaults write com.apple.dock expose-animation-duration -float 0.05 # Mission Control & space switching
defaults write -g NSWindowResizeTime -float 0.001 # Window resize
defaults write com.apple.dock autohide-time-modifier -float 0.15 # Dock reveal
defaults write com.apple.dock autohide-delay -float 0 # Dock hide

killall Dock # enable change immediately
