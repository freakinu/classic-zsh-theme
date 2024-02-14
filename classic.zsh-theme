# classic.zsh-theme
#
# Author: freakinu
# URL: http://github.com/freakinu


DISTRO=`grep -oP '(?<=^ID=).+' /etc/os-release | cut -d '"' -f 2`
PROMPT=$'%{$fg_bold[red]%}%n@${DISTRO}%{$reset_color%}:%{$fg_bold[blue]%}%~%{$reset_color%}'
PROMPT+='%{$fg[green]%}$(git_prompt_info)%{$reset_color%}\$ '

# git settings from af-magic theme by Andy Fleming
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"