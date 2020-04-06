# enviroment path
# export PATH=/usr/local/bin:$PATH

# INPORTS {{{
source ~/.bash_profile
source ~/.bashrc
# }}}

# PLUGINS {{{
autoload -Uz compinit
compinit
# }}}}

# LANG {{{
export LANG=ja_JP.UTF-8
# }}}}

# COLOR {{{
autoload -Uz colors
colors
# }}}

# PROMPT {{{
PROMPT='%F{cyan}%n@%m > %f'
RPROMPT="[%d]"
# }}}

#reload
alias reload='exec zsh -l'

#history
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt nonomatch

#assistance
zstyle ':completion:*' menu select
setopt correct

#git
alias git-tree="git log --graph --oneline"

#create diff file (refer to https://qiita.com/kaminaly/items/28f9cb4e680deb700833)
function git-diff-archive() 
{
  local diff=""
  local h="HEAD"
  if [ $# -eq 1 ]; then
    if expr "$1" : '[0-9]*$' > /dev/null ; then
      diff="HEAD~${1} HEAD"
    else
      diff="${1} HEAD"
    fi
  elif [ $# -eq 2 ]; then
    diff="${2} ${1}"
    h=$1
  fi
  if [ "$diff" != "" ]; then
    diff="git diff --diff-filter=d --name-only ${diff}"
  fi
  git archive --format=zip --prefix=root/ $h `eval $diff` -o archive.zip
}