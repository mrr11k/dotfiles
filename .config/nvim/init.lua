vim.opt.scrolloff=8
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth = 4
vim.expandtab=true
vim.smartindent=true
vim.opt.termguicolors=true -- enable true colors support

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'gpanders/editorconfig.nvim'
vim.call('plug#end')

vim.g.ayucolor="dark" -- for dark version of theme
vim.cmd("colorscheme ayu")

vim.g.mapleader=" "
vim.api.nvim_set_keymap("n", "<leader>pv", ":Vex<cr>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader><cr>", ":so ~/.config/nvim/init.lua<cr>", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-p>", ":GFiles<cr>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>pf", ":Files<cr>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>cn", ":cnext<cr>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>cp", ":cprev<cr>", {noremap=true})
