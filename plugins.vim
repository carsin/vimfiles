call plug#begin('~/.config/nvim/plugged')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General editing
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'

" UI
Plug 'dylanaraps/wal.vim'
Plug 'bling/vim-airline'

" Languages
Plug 'pangloss/vim-javascript'

" Utility
Plug 'wakatime/vim-wakatime'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_powerline_fonts = 1
