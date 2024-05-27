vim.o.hlsearch = false
vim.wo.number = true
vim.o.relativenumber=true
vim.o.scrolloff=8
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth = 4
vim.expandtab=true
vim.smartindent=true
vim.o.termguicolors=true -- enable true colors support

-- See `:help vim.o`

-- Enable mouse mode
-- vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

