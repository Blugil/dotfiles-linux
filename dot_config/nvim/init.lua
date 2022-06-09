--  _       _ _     _             
-- (_)     (_) |   | |            
--  _ _ __  _| |_  | |_   _  __ _ 
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|
                                

require('plugins')
require('plugin_config')

require('alpha_config')
require('cmp_config')
require('lualine_config')
require('nvimtree_config')
require('barbar_config')
require('toggleterm_config')

vim.g.catppuccin_flavour = "frappe"
vim.cmd('colorscheme gruvbox')

vim.o.termguicolors=true

vim.o.encoding='UTF-8'

vim.o.syntax='on'

vim.o.shiftwidth=4

vim.o.tabstop=4

vim.o.softtabstop=4

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
