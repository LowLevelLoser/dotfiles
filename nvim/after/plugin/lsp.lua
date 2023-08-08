local lsp = require("lsp-zero")

lsp.preset("recommended")



lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    autostart = true,
    settings = {
            Lua = {
            diagnostics = { globals = {'vim'} }
        }
    }
})

--local cmp = require('cmp')

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = '',
        warn = '',
        hint = '󰌶',
        info = '',
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
end)
lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

