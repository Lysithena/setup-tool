eval (hub alias -s)
alias b popd
alias vi nvim
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
end
set -U FZF_LEGACY_KEYBINDINGS 0
