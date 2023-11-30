vim.g.mapleader=' '

-- helper functions
local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- general
nmap('<leader>cp', ':cprev<cr>')
nmap('<leader>pv', ':Vex!<cr>')
nmap('<leader><cr>', ':so ~/.config/nvim/init.lua<cr>')
nmap('<leader>cn', ':cnext<cr>')

-- split switching
nmap('<C-h>', '<C-w><C-h>')
nmap('<C-j>', '<C-w><C-j>')
nmap('<C-k>', '<C-w><C-k>')
nmap('<C-l>', '<C-w><C-l>')

-- move lines up and down
vmap('J', ':m \'>+1<CR>gv=gv')
vmap('K', ':m \'<-2<CR>gv=gv')

nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')
nmap('<C-d>', '<C-d>zz')
nmap('<C-u>', '<C-u>zz')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
