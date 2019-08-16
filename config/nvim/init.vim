if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if !isdirectory(expand('~/.cache/dein/repos/github.com/Shougo/dein.vim'))
  execute '!curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh'
  execute '!sh ./installer.sh ~/.cache/dein'
endif

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  
  if dein#check_install()
    call dein#install()
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set encoding=utf-8
set number
set expandtab
set tabstop=4
set autoindent
set ignorecase
set smartcase
set hlsearch
set mouse=a
colorscheme molokai
tnoremap <ESC> <C-\><C-n>
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
nnoremap <silent> <Esc><Esc> :noh<CR>
inoremap <silent> <Esc> <Esc>:w<Cr>


let g:airline_theme = 'molokai'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:go_def_mapping_enabled = 0
let g:go_fmt_autosave = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

let g:vimfiler_as_default_explorer = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_completion_max_suggestions = 1
let g:ale_open_list = 1

let g:deoplete#enable_at_startup = 1
