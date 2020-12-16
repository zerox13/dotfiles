set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

"The theme
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'alvan/vim-closetag'
Plugin 'preservim/nerdtree'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set bg=dark 
let g:gruvbox_contrast_dark = '(hard)'

colorscheme gruvbox

set t_Co=256
syntax on
set number
set relativenumber
set tabstop=2
set wildmenu
set colorcolumn=80
set smartindent
set shiftwidth=2
inore jk <Esc>
"Disable arrow-keys
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
"auto close brackets
noremap {<cr> {<cr>}<c-o><s-o>}

set clipboard=unnamed
"copyy and paste between system and vim rigister 
vnoremap <C-y> "+y
map <C-p> "+p
"Latex autocompile and open pdf
"map I :! pdflatex %<CR><CR> "This should be changed as I used for other
"things
"
map S :! okular $(echo % \|sed 's/tex$/pdf/') & disown <CR><CR>
"Bash autoX
"map <C-p> :w<CR>:!bash %<CR>
set encoding=utf-8
scriptencoding utf-8

"Open nerdTree
map <C-n> :NERDTreeToggle<CR>
