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
call map(dein#check_clean(), "delete(v:val, 'rf')")

colorscheme molokai
set undodir=$HOME/.config/undodir/
set undofile
let g:undotree_SetFocusWhenToggle = 1

nnoremap <C-u> :UndotreeToggle<CR>
function! g:Undotree_CustomMap()
    map <silent> <buffer> <Esc> q
    map <silent> <buffer> h ?
endfunction

set encoding=utf-8
set number
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set hidden
set ignorecase
set hlsearch
set showmatch
set smartcase
set cursorline
set matchtime=1
set matchpairs& matchpairs+=<:>
set clipboard+=unnamedplus
set mouse=a

hi MatchParen      ctermfg=208 ctermbg=233 cterm=bold 
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
let g:airline#extensions#ale#enabled = 0
"
let g:go_def_mapping_enabled = 0
let g:go_fmt_autosave = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0
nmap <silent> <space><space> :<C-u>CocList<cr><Paste>

let g:vimfiler_as_default_explorer = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:ale_lint_on_insert_leave = 1
"let g:ale_completion_max_suggestions = 1
"let g:ale_open_list = 1

let g:deoplete#enable_at_startup = 1
" SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
   \: "\<TAB>"

nmap gx <Plug>(openbrowser-smart-search)
