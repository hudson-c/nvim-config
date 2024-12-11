-- change windows without C-w
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- toggles
vim.keymap.set('n', '<leader>tl', '<cmd>set rnu!<CR><cmd>set nu!<CR>', { desc = 'line numbers' })

-- tabs
vim.keymap.set('n', ']t', '<cmd>tabnext<CR>', { desc = 'next tab' })
vim.keymap.set('n', '[t', '<cmd>tabprevious<CR>', { desc = 'prev tab' })

-- diagnostics
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

-- launchers
vim.keymap.set('n', '<leader>L', '<cmd>Lazy<CR>', { desc = 'Lazy' })
vim.keymap.set('n', '<leader>M', '<cmd>Mason<CR>', { desc = 'Mason' })
vim.keymap.set('n', '<leader>O', '<cmd>Oil<CR>', { desc = 'Oil' })
