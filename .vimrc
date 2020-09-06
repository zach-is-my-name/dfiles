color default 
set nocompatible              " be iMproved, required
filetype off                  " required

set directory^=$HOME/.vim/swap//

set shiftwidth=2
set breakindent
set splitbelow
set splitright
let g:vimroom_width=100 
let g:vimroom_sidebar_height=0


" Switch to last-active tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap <Leader>t :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'file:///home/zmg/Downloads/Tabmerge'
Plugin 'file:///home/zmg/.vim/vim-wholelinecolor'
"Plugin 'AndrewRadev/lindiff.vim.git'

call vundle#end()            " required
filetype plugin indent on    " required

set guicursor=n:blinkwait0-blinkon0-blinkoff0
map <C-c> "+y<CR>
set clipboard=unnamed

set clipboard=unnamedplus
set paste
" colorscheme shades-of-teal
"set showmatch
set hidden



let g:netrw_browse_split = 3

"set laststatus=2

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

"Plug 'scrooloose/nerdtree'
Plug 'tomlion/vim-solidity'
Plug 'mikewest/vimroom'
" Plug './Downloads/Tabmerge.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'cormacrelf/vim-colors-github'
Plug 'leafgarland/typescript-vim'
Plug 'regedarek/ZoomWin'
"Plug 'endel/vim-github-colorscheme'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
colorscheme github
syntax enable
