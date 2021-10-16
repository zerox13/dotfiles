" Auther: Abdulsalam Aldahir 
" GitHub: Zerox13

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'morhetz/gruvbox'                         " My theme
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'preservim/nerdtree'                      " The file tree plugin


Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/rainbow_parentheses.vim'        " The file tree plugin

" Languages
Plugin 'vim-python/python-syntax'
"Plugin 'davidhalter/jedi-vim'                   " The python autoComplete plugin
"Plugin 'SQLUtilities'                            " SQL tools, (formatter)
"Plugin 'Align'                                   " SQLUtilities Dependencie 

Plugin 'tpope/vim-surround'                      " Change surrounding marks
Plugin 'dag/vim2hs'                              " Haskell plugin
Plugin 'benmills/vimux'                          " interact with tmux 

Plugin 'alvan/vim-closetag'                      " Closing tag for html
Plugin 'ap/vim-css-color'                        " Color previews for CSS
"Plugin 'neoclide/coc.nvim', {'branch':'release'} "COC For intellisense

Plugin 'jceb/vim-orgmode'

Plugin 'udalov/kotlin-vim'
"The following are examples of different formats supported.
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
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

call vundle#end()            " required
filetype plugin indent on    " required

" ========== General Settings  ========
let g:mapleader = "\<Space>"
inore jk <Esc>
"let g:gruvbox_contrast_dark = '(hard)'
set bg=dark 
set t_Co=256
set number
set relativenumber
set tabstop=2
set wildmenu
set colorcolumn=80
set smartindent
set shiftwidth=2
set pastetoggle=<F2>
set encoding=utf-8
set pyxversion=3
set cursorline                       " Enable highlighting of the current line
set cmdheight=1

set foldenable
set foldmethod = indent



filetype off                  " required
"colorscheme gruvbox
colorscheme dracula
syntax on
scriptencoding utf-8


let g:rainbow#pairs = [['(', ')'], ['[', ']']]
let g:rainbow#blacklist = [142]

"===========================================================
"                        My maping
"===========================================================

" -- Disable arrow-keys
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" -- Open nerdTree
map <C-n> :NERDTreeToggle<CR>
" -- Toggle rainbowParentheses
map <Leader>p :RainbowParentheses!!<CR>

map <Leader>s :set spell! spelllang=en_us<CR>


" -- auto close brackets
"noremap {<cr> {<cr>}<c-o><s-o>}
"inoremap {<CR> {<CR>}<C-o>O
"noremap (<cr> (<cr>)<c-o><s-o>)

" ---->  system and vim rigister <-----
"  OBS, might need to install gvim to fix the problem 
"       of the setting the clipboard
set clipboard=unnamedplus
"set clipboard=unnamed
vnoremap <C-y> "+y
map <C-p> "+p

"------>  Vimux maps <------  
"
nmap <leader>l :call VimuxRunCommand("ls") <cr>
nmap <leader>m :call VimuxRunCommand("make") <cr>
nmap <leader>r :call VimuxRunCommand("./a") <cr>

"----> Splits navigation <----
"
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l

"----> Splits Resizeing <----
"
noremap <silent> <C-Left> :vertical resize +3 <CR>
noremap <silent> <C-Right> :vertical resize -3 <CR>
noremap <silent> <C-Up> :vertical resize +3 <CR>
noremap <silent> <C-Down> :vertical resize -3 <CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"===========================================================
"                  Latex autocompile and open pdf
"===========================================================
"
"This should be changed as I used for other things
"map I :! pdflatex %<CR><CR> 
map <leader>i :! pdflatex main.tex <CR><CR>
"
map S :! okular main.pdf & disown <CR><CR>
"map S :! okular $(echo % \|sed 's/tex$/pdf/') & disown <CR><CR>
" ============================================================ END  ===========

