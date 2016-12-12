## .bashrc is called both for login shells (through .bash_profile)
## and subsequent subshells

#---------------------------------------------------------------------
# System specific settings (color prompt, loaded modules, etc.)
#---------------------------------------------------------------------
if (echo $HOSTNAME | grep -iq 'mac')
then
    # Prompt without username
    PS1="\e[01;36m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\D{%F %T})\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
fi
if (echo $HOSTNAME | grep -q -E 'fish|wasteland|T460')
then 
    PS1="\[\e[0;94m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
fi
PS2="->"


#---------------------------------------------------------------------
# Environment Variables
#---------------------------------------------------------------------
# Emacs? Screw that noise
export EDITOR=vim
export VISUAL="$EDITOR"

# Force bash to check the terminal's row/column size after each command before prompt is displayed
# Sourced from http://hintsforums.macworld.com/archive/index.php/t-17068.html
shopt -s checkwinsize

# Make sure LS colors are set for dark/black background
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#---------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------

#alias ssh="ssh -X" # Universaly turning on x11 forwarding is a horrible idea... Now I know better.
alias cj="checkjob"
alias bk="cd .."
alias cat="cat -n"
alias grep="egrep"
alias network-restart="sudo systemctl restart NetworkManager"
alias python="python3"


#---------------------------------------------------------------------
# Functions
#---------------------------------------------------------------------

#---------------------------------------------------------------------
# Other
#---------------------------------------------------------------------

# Source private bashrc information
source ~/dotfiles/bashrc.private 2>/dev/null
