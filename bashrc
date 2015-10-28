## .bashrc is called both for login shells (through .bash_profile)
## and subsequent subshells

#---------------------------------------------------------------------
# System specific settings (color prompt, loaded modules, etc.)
#---------------------------------------------------------------------
if (echo $MOABSERVER | grep -q '^opt')
then
    # Prompt without username
    #PS1="\[\e[01;36m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
    PS1="\e[0;97m\](\u)\[\e[01;37m\]:\[\e[01;36m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
    module load python-2.7.1
fi
if (echo $MOABSERVER | grep -q '^ruby')
then
    PS1="\[\e[1;95m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
    #module load python/2.7.1
fi
if (echo $MOABSERVER | grep -q 'oak')
then 
    PS1="\[\e[0;94m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
    module load python/2.7.8
    module load intel/14.0.0.080
fi
if (echo $host | grep -q 'fish')
then 
    PS1="\[\e[0;94m\](\h)\[\e[01;37m\]:\[\e[01;31m\](\@)\[\e[01;35m\]:\[\e[01;33m\](\w)\[\e[01;37m\]\n\$ \[\e[00m\]"
fi
PS2="->"

# Prepend local bin to path
export PATH=/nfs/12/kschooley/bin:$PATH
# Append location of tq and friends to path 
export PATH=$PATH:/usr/local/admin/bin


#module use /nfs/12/kschooley/local/share/modulefiles

# Force bash to check the terminal's row/column size after each command before prompt is displayed
# Sourced from http://hintsforums.macworld.com/archive/index.php/t-17068.html
shopt -s checkwinsize

#-------------------
# Aliases
#--------------------
alias ssh="ssh -X"
alias cj="checkjob"
alias modules="module list"
alias bk="cd .."
alias fs="cd /fs/lustre/kschooley"
#alias userspace="cd /fs/lustre/kschooley/userspace"
alias ls="ls --color=auto"
alias checkreapy="less ~/var/log/reapy/*/$(date "+\%Y\%m\%d").log"
alias cat="cat -n"
alias jobs="jobs -l"

#------------------
# Custom Functions
#-----------------
function cs () {
    cd "$@" && ls
}

# Function for quickly determining LDAP emails from usernames
function ldapemail () {
    ldapsearch -x uid="$1" -LLL | grep mail | awk '{print $2}'
}

# Function for getting finger and ldapemail information in one command
function contact () {
    finger $1
    echo "LDAP email:" `ldapemail $1`
}

## Function to automate cleaning of stray processes from nodes
#function clean_cluster () {
#    node_list=$(pdsh -g all reapy -b | awk '{print $1}' | uniq |  sed 's/.$//')
#    clean_node  $node_list &>> ~/var/log/reapy/clean_cluster/$(date "+\%Y\%m\%d").log
#}

#------------------
# ls colors
#------------------
LS_COLORS='di=1;34'
export LS_COLORS

# Source private bashrc information
source ~/dotfiles/bashrc.private
