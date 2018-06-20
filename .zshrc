# INPORTS {{{
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
PROMPT='%F{red}%n@%m > %f'
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

#assistance
zstyle ':completion:*' menu select
setopt correct
