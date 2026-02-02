-- Telescope
local builtin = require('telescope.builtin')
-- Ctrl + p
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
-- Ctrl + f
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope grep files' })

-- Neotree
-- Ctrl + n
vim.keymap.set('n', '<C-n>', ':Neotree toggle filesystem left<CR>')
