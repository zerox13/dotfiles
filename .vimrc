set t_Co=256
"Pathogen
"execute pathogen#infect()
"filetype plugin indent on
syntax on
set number
set relativenumber
set tabstop=3
set wildmenu
set colorcolumn=80
set listchars=tab:\¦\ 
set list
set smartindent
set shiftwidth=3
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
map I :! pdflatex %<CR><CR>
map S :! okular $(echo % \|sed 's/tex$/pdf/') & disown <CR><CR>
"Bash autoX
"map <C-p> :w<CR>:!bash %<CR>
