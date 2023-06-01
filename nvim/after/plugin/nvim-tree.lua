-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()
  -- OR setup with some options
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<cr>")
--vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<cr>")

vimp.nnoremap('<leader>o', function ()
    if vim.bo.filetype == "NvimTree" then
        vim.cmd.wincmd "p"
    else
        vim.api.nvim_command('NvimTreeFocus');
        --vim.cmd.Nvimtree "focus"
    end
end)

-- {desc = "Toggle Tree Focus"}
