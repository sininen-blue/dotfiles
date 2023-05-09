call plug#begin()
	Plug 'junegunn/goyo.vim'
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"	Plug 'feline-nvim/feline.nvim'
	Plug 'itchyny/lightline.vim'
call plug#end()

lua << EOF
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]
--require('feline').setup()
EOF
let g:lightline = {'colorscheme': 'catppuccin'}

:set number
autocmd BufRead,BufNewFile *.md :setlocal wrap linebreak
autocmd BufRead,BufNewFile *.md :Goyo
