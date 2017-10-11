call plug#begin('~/.config/nvim/plugged')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General editing
Plug 'jiangmiao/auto-pairs' " Pairing
Plug 'mattn/emmet-vim' " Emmet
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'wellle/tmux-complete.vim' " Autocomplete across tmux sessions & panes

" UI
Plug 'dylanaraps/wal.vim' " Wal color scheme
Plug 'bling/vim-airline' " Airline status bar
Plug 'airblade/vim-gitgutter' " Git diff in gutter
Plug 'scrooloose/nerdtree' " File system browser
Plug 'mhinz/vim-startify' " Fancy start screen

" Languages
Plug 'sheerun/vim-polyglot' " Syntax pack
Plug 'pangloss/vim-javascript' " JS syntax highlighting
Plug 'hail2u/vim-css3-syntax' " CSS

" Utility
Plug 'wakatime/vim-wakatime' " Wakatime time tracking


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
