set nocompatible

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>ct :CommandT<CR>

set nobackup
set nowritebackup
set history=50    " keep 50 lines of command line history
set incsearch     " do incremental searching

set ignorecase
set smartcase

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" ruby path for faster vim start
let g:ruby_path = system('echo $HOME/.rbenv/shims')

source $HOME/.vim/autocmd.vim
source $HOME/.vim/colors.vim
source $HOME/.vim/ctags.vim
source $HOME/.vim/clipboard.vim
source $HOME/.vim/gui.vim
source $HOME/.vim/rails.vim
source $HOME/.vim/sessions.vim
source $HOME/.vim/shortcuts.vim
source $HOME/.vim/syntax_highlighting.vim
source $HOME/.vim/tab_completion.vim
source $HOME/.vim/visual.vim
source $HOME/.vim/tmux.vim

" hamls sass
" set runtimepath+=$HOME/.vim/vim-haml
" filetype plugin indent on
" syntax on

" For Command-T
call pathogen#helptags()
" Ignore this files on listings (especially Command-T)
set wildignore+=*.o,*.obj,.git,.svn,.cvs,tmp,cache

" ...
call pathogen#runtime_append_all_bundles()
