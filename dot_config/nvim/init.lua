--  _       _ _     _             
-- (_)     (_) |   | |            
--  _ _ __  _| |_  | |_   _  __ _ 
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|
                                

require('plugins')

-- require('lsp_config')
require('mason-lsp')
require('cmp_config')
require('lualine_config')
require('nvimtree_config')
require('barbar_config')
require('treesitter_config')

vim.cmd('colorscheme gruvbox')

vim.o.termguicolors=true

vim.o.encoding='UTF-8'

vim.o.syntax='on'

vim.o.shiftwidth=2

vim.o.tabstop=2

vim.o.softtabstop=2

vim.o.expandtab=true

vim.o.smartcase=true

vim.o.cursorline=true

vim.o.colorcolumn="99999"

vim.o.scrolloff=10

vim.o.swapfile=false

vim.o.backup=false

vim.o.number=true

vim.o.relativenumber=true

vim.o.showmatch=true

vim.o.showcmd=true

vim.o.hidden=true
