-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins/plugins')
-- require('plugins/lsp-configs')

require('config/options')
require('config/keymaps')
