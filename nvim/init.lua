-- some extra options
require('config.set')

-- get plugins
require('config.plugins')

-- get keymaps
require('config.keymaps')

-- theme
require('config.theme')

-- sourcing plugin configurations
local paths = vim.split(vim.fn.glob ('~/.config/nvim/after/plugin/*.lua'), '\n')

for i, file in pairs(paths) do
    vim.cmd('source ' .. file)
end
