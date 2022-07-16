call plug#begin()
	Plug 'junegunn/goyo.vim'
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()


lua << EOF
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup()
EOF


" Vim Script
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
colorscheme catppuccin

set wrap linebreak
autocmd BufRead,BufNewFile *.md :Goyo
