--require('lspkind').init({
--    -- DEPRECATED (use mode instead): enables text annotations
--    --
--    -- default: true
--    -- with_text = true,
--
--    -- defines how annotations are shown
--    -- default: symbol
--    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
--    mode = 'symbol_text',
--
--    -- default symbol map
--    -- can be either 'default' (requires nerd-fonts font) or
--    -- 'codicons' for codicon preset (requires vscode-codicons font)
--    --
--    -- default: 'default'
--    preset = 'codicons',
--
--    -- override preset symbols
--    --
--    -- default: {}
--    symbol_map = {
--      Text = "",
--      Method = "",
--      Function = "",
--      Constructor = "",
--      Field = "ﰠ",
--      Variable = "",
--      Class = "ﴯ",
--      Interface = "",
--      Module = "",
--      Property = "ﰠ",
--      Unit = "塞",
--      Value = "",
--      Enum = "",
--      Keyword = "",
--      Snippet = "",
--      Color = "",
--      File = "",
--      Reference = "",
--      Folder = "",
--      EnumMember = "",
--      Constant = "",
--      Struct = "פּ",
--      Event = "",
--      Operator = "",
--      TypeParameter = ""
--    },
--})


local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = '',
        warn = '',
        hint = '',
        info = ''
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

