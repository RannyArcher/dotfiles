# Based on Fino theme
# By Ranny Archer
# Use with a dark background and 256-color terminal!

local git_info='$(git_prompt_info)'

PROMPT="${FG[001]}┌─[${FG[214]}%B%n%b%{$reset_color%}${FG[070]}@${FG[037]}%B$HOST%b%{$reset_color%}${FG[001]}]─[%B${FG[004]}%~%b${FG[001]}]${git_info}${FG[001]}
${FG[001]}└─╼%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="${FG[001]}─[${FG[002]}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b${FG[001]}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%b${FG[001]}]─[${FG[002]}${FG[214]}"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]}"
