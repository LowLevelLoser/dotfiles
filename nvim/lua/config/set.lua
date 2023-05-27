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
--vim.o.swapfile = false
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
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
vim.opt.foldmethod = "manual"
vim.opt.foldnestmax = 10
vim.opt.foldenable = false
vim.opt.foldlevel = 2



-- PATCH: in order to address the message:
--vim.treesitter.query.get_query() is deprecated, use vim.treesitter.query.get() instead. :help deprecated
--   This feature will be removed in Nvim version 0.10
--local orig_notify = vim.notify
----local filter_notify = function(text, level, opts)
--  -- more specific to this case
-- if type(text) == "string" and (string.find(text, "get_query", 1, true) or string.find(text, "get_node_text", 1, true)) then
--  -- for all deprecated and stack trace warnings
--   if type(text) == "string" and (string.find(text, ":help deprecated", 1, true) or string.find(text, "stack trace", 1, true)) then
--    return
--  end
--  orig_notify(text, level, opts)
--end
--vim.notify = filter_notify
