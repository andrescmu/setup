"look for puglins, indent files, etc...
syntax on
filetype plugin on
filetype indent on
set laststatus=2
set smartindent
set showmatch
set nohlsearch "search highlight off
set foldmethod=marker
set tabstop=4
set shiftwidth=4
set expandtab
set indentexpr=<Enter>
syn on
set bs=indent,eol,start
set number "display line numbers
"" Move up and down and open pages
map <C-P> <C-W>n<C-W>_
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
"" Move left and right and open tabs
map <C-N> :tabnew<CR>
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>
"" Close page and max size above page <CR> means control
map ZZ :q<CR><C-W>k<C-W>_ 
cmap q<CR> q<CR><C-W>_
"" Use Ctr-C to copy what is highlighted
""map <C-C> "+y
"" Move one character in insert mode
imap <C-L> <esc>lli
imap <C-H> <esc>i
imap <C-K> <esc>kli
imap <C-J> <esc>jli
"" Insert one line
map <CR> bo<esc>
"" Insert one space
map <space> i<space><esc>l
"" Improve Matlab and VIM commands http://www.vim.org/scripts/script.php?script_id=2407
source $VIMRUNTIME/macros/matchit.vim
autocmd BufEnter *.m    compiler mlint
