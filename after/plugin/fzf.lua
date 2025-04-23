local fzf = require("fzf-lua")

vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>')
vim.keymap.set('n', '<leader>fg', ':FzfLua git-files<CR>')
