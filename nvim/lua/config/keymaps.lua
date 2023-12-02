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
vim.keymap.set("v", "<leader>s", "\"ly:%s/<C-r>l/<C-r>l/gI<Left><Left><Left>", {desc = "replace string"})
--vim.keymap.set("v", "<leader>s", [[:%s/<C-r>/<C-r>/gI<Left><Left><Left>]],{desc = "replace string"})

-- auto bash chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, {desc = "make bash script executable"})

-- handles splits
vim.keymap.set("n", "|", "<cmd>vsplit<cr>")
vim.keymap.set("n", "_", "<cmd>split<cr>")
vim.keymap.set("n", "<leader>hv", "<cmd>wincmd L<cr>")
vim.keymap.set("n", "<leader>vh", "<cmd>wincmd J<cr>")

-- write & quit shortcuts
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", {desc = "Save"})
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", {desc = "Quit"})
vim.keymap.set("n", "<leader>wq", "<cmd>x<cr>", {desc = "Save and Quit"})


-- Define a keybinding to trigger code actions
vim.api.nvim_set_keymap('n', '<leader>ft', ':Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<M-CR>', ':CodeActionMenu<CR>', { noremap = true, silent = true })
-- zen toggle
vim.keymap.set("n", "<leader>z", "<cmd>:ZenMode<CR> :IndentBlanklineToggle<CR> :Barbecue toggle<CR>")

-- man pages
vim.keymap.set("n", "mm", "<cmd>:vert Man<CR>")
-- makdown shiz
vim.cmd([[
augroup MarkdownAutoCmds
  autocmd!
  autocmd FileType markdown inoremap ;n <Enter>---<Enter>
  autocmd FileType markdown inoremap ;b ****<++><Esc>F*hi
  autocmd FileType markdown inoremap ;s ~~~~<++><Esc>F~hi
  autocmd FileType markdown inoremap ;e **<Esc>F*i
  autocmd FileType markdown inoremap ;h ====<Esc>F=hi
  autocmd FileType markdown inoremap ;i ![]()<Esc>F[a
  autocmd FileType markdown inoremap ;a []()<Esc>F[a
  autocmd FileType markdown inoremap ;1 #<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;2 ##<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;3 ###<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;4 ####<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;5 #####<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;6 ######<Space><Enter><Esc>kA
  autocmd FileType markdown inoremap ;l --------<Enter>
  autocmd FileType markdown inoremap ;t \|word\|<Enter>\|----\|<Enter>\|entry\|<Enter>

  autocmd FileType markdown nnoremap t lvf\|y<End>pj
  autocmd FileType markdown nnoremap <buffer> <F4> :!pandoc % -o %:r.pdf<CR><CR>
  autocmd FileType markdown nnoremap <buffer> <F5> :!mupdf %:r.pdf<CR><CR>
augroup END
]])


-- autocmd FileType markdownpoop nnoremap <buffer> <F5> :!pandoc <C-r>% -o <C-r>%.pdf<CR><CR>
--
-- plugin specific bindings I couldn't be bothered to put in after/plugin/
--vim.api.nvim_set_keymap('n', '<leader>ml', [[ <Cmd>call sml#mode_on()<CR> ]], {noremap = true}) -- multi line

--print(vim.fn.expand('%:p'))
--experiments

