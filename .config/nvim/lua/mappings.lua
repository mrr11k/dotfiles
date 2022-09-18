vim.g.mapleader=' '

-- helper functions
local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

local function cmap(shortcut, command)
  map('c', shortcut, command)
end

local function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- general
nmap('<leader>pv', ':Vex!<cr>')
nmap('<leader><cr>', ':so ~/.config/nvim/init.lua<cr>')
nmap('<leader>cn', ':cnext<cr>')
nmap('<leader>cp', ':cprev<cr>')

-- move lines up and down
vmap('J', ':m ">+1<CR>gv=gv"')
vmap('K', ':m "<-2<CR>gv=gv"')

nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')
nmap('<C-d>', '<C-d>zz')
nmap('<C-u>', '<C-u>zz')

-- telescope
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')

