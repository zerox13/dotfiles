" gitHub: Zerox13
" Auther: Abdulsalam Aldahir 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'morhetz/gruvbox'                         " My theme
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'preservim/nerdtree'                      " The file tree plugin

Plugin 'lervag/vimtex'

Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/rainbow_parentheses.vim'        " The file tree plugin

" Languages
"Plugin 'SQLUtilities'                            " SQL tools, (formatter)
"Plugin 'Align'                                   " SQLUtilities Dependencie 

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-surround'                      " Change surrounding marks
Plugin 'dag/vim2hs'                              " Haskell plugin
Plugin 'benmills/vimux'                          " interact with tmux 

Plugin 'alvan/vim-closetag'                      " Closing tag for html
Plugin 'ap/vim-css-color'                        " Color previews for CSS

"Plugin 'neoclide/coc.nvim', {'branch':'release'} "COC For intellisense
Plugin 'neovim/nvim-lspconfig'

" use LspInstall to install servers!!
Plugin 'williamboman/nvim-lsp-installer'

"DO-when-new use TSInstall to install parsers!!
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" DO-when-new add the required in Lua config below
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'

"Telescope things
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'

Plugin 'tpope/vim-commentary'

call vundle#end()            " required
filetype plugin indent on    " required

" ========== General Settings  ========
let g:rooter_targets = '~/.config*'

let g:mapleader = "\<Space>"
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
set pyxversion=3
set cursorline                       " Enable highlighting of the current line
set cmdheight=1

"set foldenable
"set foldmethod=indent




filetype off                  " required
colorscheme gruvbox
"colorscheme dracula
syntax on
scriptencoding utf-8

" Spell check 
"highlight clear SpellBad
highlight SpellBad ctermfg=016 ctermbg=226 guifg=#fff000 guibg=#ffff00

let g:rainbow#pairs = [['(', ')'], ['[', ']']]
let g:rainbow#blacklist = [142]


" ========== Lua LSP  ========


set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


lua << EOF

-- treesitter settings
local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = "maintained", -- Only use parsers that are maintained
	highlight = { -- enable highlighting
		enable = true, 
		},
	indent = {
	enable = true, -- default is disabled anyways
	}
}

-- LSP-installer settings
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)

--
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
--
--Telescope 
require('telescope').setup{
	pickers = {
		find_files = {

			}

		},
	}
EOF

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
"set clipboard=unnamedplus
set clipboard=unnamed
vnoremap <C-y> "+y
map <C-p> "+p

"------>  Vimux maps <------  
"
"nmap <leader>l :call VimuxRunCommand("ls") <cr>
"nmap <leader>m :call VimuxRunCommand("make") <cr>
nmap <leader>run :call VimuxRunCommand("./a") <cr>

"----> Splits navigation <----
"
nnoremap <S-h> <C-w>h
" nnoremap <S-j> <C-w>j
" nnoremap <S-k> <C-w>k
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

"clear search hgihlighting
nnoremap <leader>h :set hlsearch!<CR>

"Destroy buffer
nnoremap <leader>d :bd<CR>

nmap <leader>rr :so %<cr>

"========== LSP MAPS
nmap gd :lua vim.lsp.buf.definition()<cr>
nmap gD :lua vim.lsp.buf.declaration()<cr>
nmap gi :lua vim.lsp.buf.implementation()<cr>
nmap gw :lua vim.lsp.buf.document_symbol()<cr>
nmap gr :lua vim.lsp.buf.references()<cr>
nmap gt :lua vim.lsp.buf.type_definition()<cr>
nmap gw :lua vim.lsp.buf.workspace_symbol()<cr>
nmap <c-k> :lua vim.lsp.buf.hover()<cr>
nmap <c-h> :lua vim.lsp.buf.signature_help()<cr>
nmap <leader>af :lua vim.lsp.buf.code_action()<cr>
nmap <leader>rn :lua vim.lsp.buf.rename()<cr>

"======== Telescope maps
nnoremap <leader>bi <cmd>Telescope builtin<cr>

" files/buffers etc
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" vim general things
nnoremap <leader>. <cmd>Telescope find_files cwd=~/.config <cr>
nnoremap <leader>cs <cmd>Telescope colorscheme<cr>
nnoremap <leader>man <cmd>Telescope man_pages<cr>
nnoremap <leader>ms <cmd>Telescope marks<cr>




" git
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>



""
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

