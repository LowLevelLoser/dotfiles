vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever: According to the primagen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland (basically leader yank to yank into your system clipboard)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],{desc = "replace string"})

-- auto bash chmaod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, {desc = "make bash script executable"})

-- handles splits
vim.keymap.set("n", "|", "<cmd>vsplit<cr>")
vim.keymap.set("n", "_", "<cmd>split<cr>")

-- write & quit shortcuts
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", {desc = "Save"})
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", {desc = "Quit"})
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>", {desc = "Save and Quit"})

-- code folding its fine for now might change later


-- plugin specific bindings I couldn't be bothered to put in after/plugin/
--vim.api.nvim_set_keymap('n', '<leader>ml', [[ <Cmd>call sml#mode_on()<CR> ]], {noremap = true}) -- multi line

