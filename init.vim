"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting based on file names
filetype on
syntax on

set hidden " keep more info in memory to speed things up
set history=500 " How many lines of history vim has to remembor

set autoread " Set to auto read when a file is changed from the outside

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" Linebreak on 500 characters
set lbr
set tw=500

autocmd BufWritePre * :%s/\s\+$//e " remove trailing whitespace on save

set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last insertext text
nnoremap gV `[v`]

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=7 " Set 7 lines to the cursor - when moving vertically using j/k
set number " line numbering
set showcmd " show last entered command
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set showmatch " highlight matching [{()}]
set noeb vb t_vb= " no visual bell or beeping (thank god)
set ruler " Always show current position
set magic " For regular expressions turn magic on
set laststatus=0 " no status bar

colorscheme wal
let g:impact_transbg=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Binds & Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=" " "leader = space

" save file
nmap <leader>w :w!<cr>

" reload vim config
map <leader>r :source ~/.config/nvim/init.vim<CR>

 " clear search
nnoremap <leader><space> :nohlsearch<CR>

" jk is escape
inoremap jk <ESC>

" Remap VIM 0 to first non-blank character
map 0 ^

" Open current file in web broswers
nnoremap <leader>of :exe ':silent !firefox %'<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" General editing
Plug 'jiangmiao/auto-pairs' " Pairing
Plug 'mattn/emmet-vim' " Emmet
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'wellle/tmux-complete.vim' " Autocomplete across tmux sessions & panes
Plug 'roxma/vim-paste-easy' " Automatically set & unset paste for easy copy and pasting
Plug 'tpope/vim-commentary' " Adds comment verb

" UI
Plug 'dylanaraps/wal.vim' " Wal color scheme
Plug 'bling/vim-airline' " Airline status bar
Plug 'airblade/vim-gitgutter' " Git diff in gutter
Plug 'scrooloose/nerdtree' " File system browser
Plug 'mhinz/vim-startify' " Fancy start screen
Plug 'ap/vim-css-color' " Preview CSS colors

" Languages
Plug 'sheerun/vim-polyglot' " Syntax pack
Plug 'pangloss/vim-javascript' " JS syntax highlighting
Plug 'othree/javascript-libraries-syntax.vim' " JS libs
Plug 'hail2u/vim-css3-syntax' " CSS
Plug 'othree/html5.vim' " HTML

" Utility
Plug 'wakatime/vim-wakatime' " Wakatime time tracking
Plug 'christoomey/vim-tmux-navigator' " Navigation between vim splits & tmux panes

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Emmet
let g:user_emmet_leader_key='<Tab>'

" Deoplete
call deoplete#enable() " Use deoplete

" Airline
let g:airline_powerline_fonts = 1 " Allow airline to use powerline symbols

" NERDTree
" Control + N
map <C-n> :NERDTreeToggle<CR>

" Close vim if only window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
