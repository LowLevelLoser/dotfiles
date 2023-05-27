local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', 'fe', builtin.diagnostics, {})
vim.keymap.set('n', 'fr', builtin.lsp_references, {})
vim.keymap.set('n', 'fd', builtin.lsp_definitions, {})

