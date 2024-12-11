vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.pumheight = 5
vim.cmd 'colorscheme kanagawa'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.diagnostic.config({ signs = false })

vim.g.have_nerd_font = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 300 }
  end,
})
