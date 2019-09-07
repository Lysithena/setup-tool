#eval (hub alias -s)
alias b popd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias agi='sudo apt install'
alias agr='sudo apt remove'
alias agu='sudo apt update'
alias top=htop
alias rm='rm -i'
alias pbcopy='xclip -selection c'
alias pbpaste='xclip -selection c -o'

alias vi=nvim
alias vim=nvim
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
end
set -U FZF_LEGACY_KEYBINDINGS 0
