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
