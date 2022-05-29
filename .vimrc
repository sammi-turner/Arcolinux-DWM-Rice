filetype plugin indent on
let skip_defaults_vim=1
set modelines=0
syntax on
set number
set hidden
set cmdheight=2
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Vim Plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'maxboisvert/vim-simple-complete'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Nerd tree
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0 
