-- Lua
--vim.keymap.set("n", "<leader>tx", "<cmd>TroubleToggle<cr>",
--  {silent = true, noremap = true}
--)
--vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
--  {silent = true, noremap = true}
--)
--vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",
--  {silent = true, noremap = true}
--)
--vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>",
--  {silent = true, noremap = true}
--)
--vim.keymap.set("n", "<leader>qf", "<cmd>TroubleToggle quickfix<cr>",
--  {silent = true, noremap = true}
--)
--vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
--  {silent = true, noremap = true}
--)

local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

-- Lua
vim.keymap.set("n", "<leader>xt", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
--vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}
