vim.g.mapleader=' '

-- general
vim.keymap.set('n', '<leader>cp', ':cprev<cr>', { expr = true, silent = true })
vim.keymap.set('n', '<leader>cn', ':cnext<cr>', { expr = true, silent = true })
vim.keymap.set('n', '<leader>pv', ':Vex!<cr>', { expr = true, silent = true })

-- split switching
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- move lines up and down
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', { expr = true, silent = true, desc = 'Move visual selected line/block up' })
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', { expr = true, silent = true, desc = 'Move visual selected line/block down' })

-- center screen when jumping through search results
-- vim.keymap.set('n', 'n', 'nzzzv', { expr = true, silent = true })
-- vim.keymap.set('n', 'N', 'Nzzzv', { expr = true, silent = true })

-- center screen when jumping half a page
vim.keymap.set('n', '<C-d>', '<C-d>zz', { expr = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { expr = true, silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
