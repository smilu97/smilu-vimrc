" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Initialize plugin system
call plug#end()

set expandtab
set tabstop=4
set shiftwidth=4
set mouse=an
set number
set hlsearch
set ignorecase
syntax on

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
map <C-n> :NERDTreeToggle<CR>

