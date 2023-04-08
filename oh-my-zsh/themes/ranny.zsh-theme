# Based on Fino theme
# By Ranny Archer
# Use with a dark background and 256-color terminal!

# You can set your computer name in the ~/.box-name file if you want.

function virtualenv_prompt_info {
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}


function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

local ruby_env='$(ruby_prompt_info)'
local git_info='$(git_prompt_info)'
local virtualenv_info='$(virtualenv_prompt_info)'

PROMPT="${FG[001]}┌─[${FG[214]}%B%n%b%{$reset_color%}${FG[070]}@${FG[037]}%B$(box_name)%b%{$reset_color%}${FG[001]}]─[%B${FG[004]}%~%b${FG[001]}]${git_info}${ruby_env}${virtualenv_info}${FG[001]}
${FG[001]}└─╼%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="${FG[001]}─[${FG[002]}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b${FG[001]}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%b${FG[001]}]─[${FG[002]}${FG[214]}"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]}"

ZSH_THEME_RUBY_PROMPT_PREFIX=" ${FG[239]}using${FG[243]} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[239]}using${FG[243]} «"
ZSH_THEME_VIRTUALENV_SUFFIX="»%{$reset_color%}"
