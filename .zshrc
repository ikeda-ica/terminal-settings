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

PROMPT='%F{red}%C > %f'
