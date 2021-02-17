" Auther: Abdulsalam Aldahir 
" GitHub: Zerox13

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'morhetz/gruvbox'           " My theme
Plugin 'preservim/nerdtree'        " The file tree plugin

" Languages
Plugin 'vim-python/python-syntax'
"Plugin 'davidhalter/jedi-vim'      " The python autoComplete plugin
Plugin 'SQLUtilities'              " SQL tools, (formatter)
Plugin 'Align'                     " SQLUtilities Dependencie 

Plugin 'tpope/vim-surround'        " Change surrounding marks
Plugin 'dag/vim2hs'                " Haskell plugin
Plugin 'benmills/vimux'            " interact with tmux 

Plugin 'alvan/vim-closetag'        " Closing tag for html
Plugin 'ap/vim-css-color'          " Color previews for CSS

" The following are examples of different formats supported.
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


" ========== General Settings  ========

inore jk <Esc>
let g:gruvbox_contrast_dark = '(hard)'
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


filetype off                  " required
colorscheme gruvbox
syntax on
scriptencoding utf-8


"=========================================================== My maping ========

" -- Disable arrow-keys
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" -- Open nerdTree
map <C-n> :NERDTreeToggle<CR>

" -- auto close brackets
"noremap {<cr> {<cr>}<c-o><s-o>}
inoremap {<CR> {<CR>}<C-o>O
noremap (<cr> (<cr>)<c-o><s-o>)

" --> copyy and paste between system and vim rigister 
"set clipboard=unnamedplus
"set clipboard=unnamed
vnoremap <C-y> "+y
map <C-p> "+p

"--> 
nmap <leader>l :call VimuxRunCommand("ls") <cr>
nmap <leader>m :call VimuxRunCommand("make") <cr>
nmap <leader>r :call VimuxRunCommand("./a") <cr>
" ============================================================ END  ===========

" ==================================== Latex autocompile and open pdf =========
"
"map I :! pdflatex %<CR><CR> "This should be changed as I used for other
"things
"
"map S :! okular $(echo % \|sed 's/tex$/pdf/') & disown <CR><CR>
" ============================================================ END  ===========
