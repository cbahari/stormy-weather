PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 20 ]; then CurDir=${DIR:0:5}...${DIR:${#DIR}-15}; else CurDir=$DIR; fi'
#PS1="[\$CurDir] \$ "

###############################
##           Colors          ##
###############################

function color_my_prompt {
  local __user_and_host="\[\033[01;32m\]\u@\h"
  local __cur_location="\[\033[01;34m\]\w"
  local __git_branch_color="\[\033[31m\]"
  #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\[\033[35m\]$"
  local __last_color="\[\033[00m\]"
  export PS1="[\$CurDir] $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#Colors
export CLICOLOR=1
export LSCOLORS='Bxgxfxfxcxdxdxhbadbxbx'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export LSCOLORS=GxFxCxDxBxegedabagaced

###############################
##           Search           ##
###############################

# Searches for files
alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string


###############################
##        Shortcuts          ##
###############################

# Shortcut to SCB Taxonomy
alias scb-taxonomy="cd ~/Kasisto/Kai/Apps/kai-en-us/conf/domain/lola/user/parser/normalization/apps/scb/languages/zh_HK"

# Open Atom
alias atom='open -a "Atom"'

# Clear terminal
alias c='clear'

# FAQ CLI
alias faqcli="cd ~/Kasisto/Kai/Apps/kai-en-us/scripts && python faq_cli.py -h"

# Indonesia cta_faq.json
alias dbsid-cta="open . ~/Kasisto/Kai/Apps/kai-en-us/conf/domain/lola/user/parser/normalization/apps/dbs/languages/id_ID/"

# Open Bash
alias obf="open ~/.bash_profile"

# Print working directory
alias where="pwd"

###############################
##          Python           ##
###############################

# Reshuffle
alias reshuffle="python ~/Downloads/reshuffle.py"
eval "$(pyenv init -)"
