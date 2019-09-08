#eval (hub alias -s)
alias b popd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias ap='sudo apt purge'
alias au='sudo apt update'
alias top=htop
alias rm='rm -i'
alias pbcopy='xclip -selection c'
alias pbpaste='xclip -selection c -o'
alias se='grep $1 -rl $2'
bind \cd delete-char
alias vi=nvim
alias vim=nvim

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
end
set -U FZF_LEGACY_KEYBINDINGS 0
