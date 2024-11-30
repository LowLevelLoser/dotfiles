--------------------
--     configs    --
--------------------
vim.api.nvim_command('filetype plugin indent on')
vim.api.nvim_command('syntax on')

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.smartindent = true
vim.o.swapfile = false

--vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

vim.cmd([[
  autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif
]])


--vim.opt.cursorline = true
-- allowing mouse support
--vim.o.mouse = 'nv' --> normal / visual
--vim.g.slime_target = "tmux"

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.splitbelow = true
vim.opt.splitright = true

--folding
vim.opt.foldmethod = "indent"
vim.opt.foldnestmax = 10
vim.opt.foldenable = false
vim.opt.foldlevel = 2



