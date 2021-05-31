" plugins
call plug#begin('~/.vim/plugged')

" general
Plug 'mbbill/undotree'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
Plug 'danro/rename.vim'
Plug 'djoshea/vim-autoread'

call plug#end()

" looks
colorscheme sherwyn
set t_Co=256
set t_ut=
"set termguicolors
hi Normal guibg=NONE ctermbg=NONE
set background=dark
"hi default link BufTabLineCurrent TabLineSel
"hi default link BufTabLineActive  Pmenu
"hi default link BufTabLineHidden  TabLine
"hi default link BufTabLineFill    TabLineFill


" plugin-specific
map <leader>u :UndotreeToggle<cr>

" lightline
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }

" fzf
map <leader>f :Files<cr>
map <leader>r :Lines<cr>
map <leader>p :Buffers<cr>

" main settings
filetype plugin indent on
syntax enable
set showcmd         " see command as it's being typed
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set hlsearch        " highlight searches
set encoding=utf8
set fileencodings=utf8
set autoindent
set ls=2            " always show status line
set number
set relativenumber
set ttimeoutlen=100 " less esc key lag
set mouse=a
set clipboard+=unnamedplus

" status line
set statusline=
set statusline+=%m
set statusline+=%y
set statusline+=%r


" indenting
set expandtab
setlocal ts=4 sts=4 sw=4
autocmd FileType text  setlocal ts=4 sts=4 sw=4
autocmd FileType c,cpp setlocal ts=4 sts=4 sw=4
autocmd FileType lua   setlocal ts=4 sts=4 sw=4

autocmd FileType dart        setlocal ts=2 sts=2 sw=2
autocmd FileType html        setlocal ts=2 sts=2 sw=2
autocmd FileType css         setlocal ts=2 sts=2 sw=2
autocmd FileType javascript  setlocal ts=2 sts=2 sw=2

" permanent undo
set undodir=~/.vimdid
set undofile

" vanilla custom commands
command! -nargs=1 Tab set expandtab ts=<args> sw=<args> ai " set custom tab with (ex, :Tab 2)
command! W :w
command! Q :q
command! Reload :so ~/.config/nvim/init.vim
command! BufOnly execute '%bdelete|edit #|normal `"'

" split settings
set splitbelow
set splitright
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>
inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>

" buffer related
noremap <leader>[ :bp!<cr>
noremap <leader>] :bn!<cr>
noremap <C-Q> :bd<cr>
noremap <leader>l :ls<cr>
noremap <leader>bo :BufOnly<cr>
noremap <C-S> :wall<cr>

" netrw
noremap <leader>n :Lex<cr>
noremap <leader>e :Ex<cr>
noremap <leader>s :Sex<cr>

" folds
noremap <leader><space> za

" turn off highlight
nnoremap <silent><Return> :noh<cr><Return>
