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
nmap('<leader>pv', ':Vex<cr>')
nmap('<leader><cr>', ':so ~/.config/nvim/init.lua<cr>')
nmap('<C-p>', ':GFiles<cr>')
nmap('<leader>pf', ':Files<cr>')
nmap('<leader>cn', ':cnext<cr>')
nmap('<leader>cp', ':cprev<cr>')

-- telescope
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')
