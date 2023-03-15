vim.keymap.set("n", "<leader>tu", vim.cmd.UndotreeToggle, {desc = "UndotreeToggle"})

vimp.nnoremap('<leader>uf', function ()
    if vim.bo.filetype == "undotree" then
        vim.cmd.wincmd "p"
    else
        vim.api.nvim_command('UndotreeFocus');
        --vim.cmd.Nvimtree "focus"
    end
end)
