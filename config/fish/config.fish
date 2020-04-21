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
if [ -d $HOME/Trash ]
  alias rm='mv --backup=numbered --target-directory=$HOME/Trash'
end
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias se='grep $1 -rl $2'
bind \cd delete-char
alias vi=nvim
alias vim=nvim
export GOPATH=$HOME/.go/vendor
export PATH="$PATH:$HOME/.go/go/bin:$GOPATH/bin"
export GO111MODULE=on

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
end
set -U FZF_LEGACY_KEYBINDINGS 0
