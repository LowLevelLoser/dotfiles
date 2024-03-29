--local cmp_status_ok, cmp = pcall(require, "cmp")
--if not cmp_status_ok then
--  return
--end
--
--local snip_status_ok, luasnip = pcall(require, "luasnip")
--if not snip_status_ok then
--  return
--end

--require("luasnip/loaders/from_vscode").lazy_load()
--
--local check_backspace = function()
--  local col = vim.fn.col "." - 1
--  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
--end
--
----   פּ ﯟ   some other good icons
--local kind_icons = {
--  Text = "",
--  Method = "m",
--  Function = "",
--  Constructor = "",
--  Field = "",
--  Variable = "",
--  Class = "",
--  Interface = "",
--  Module = "",
--  Property = "",
--  Unit = "",
--  Value = "",
--  Enum = "",
--  Keyword = "",
--  Snippet = "",
--  Color = "",
--  File = "",
--  Reference = "",
--  Folder = "",
--  EnumMember = "",
--  Constant = "",
--  Struct = "",
--  Event = "",
--  Operator = "",
--  TypeParameter = "",
--}
---- find more here: https://www.nerdfonts.com/cheat-sheet
--
--cmp.setup {
--  snippet = {
--    expand = function(args)
--      luasnip.lsp_expand(args.body) -- For `luasnip` users.
--    end,
--  },
--  mapping = {
--    ["<C-k>"] = cmp.mapping.select_prev_item(),
--		["<C-j>"] = cmp.mapping.select_next_item(),
--    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
--    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
--    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
--    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
--    ["<C-e>"] = cmp.mapping {
--      i = cmp.mapping.abort(),
--      c = cmp.mapping.close(),
--    },
--    -- Accept currently selected item. If none selected, `select` first item.
--    -- Set `select` to `false` to only confirm explicitly selected items.
--    ["<CR>"] = cmp.mapping.confirm { select = true },
--    ["<Tab>"] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_next_item()
--      elseif luasnip.expandable() then
--        luasnip.expand()
--      elseif luasnip.expand_or_jumpable() then
--        luasnip.expand_or_jump()
--      elseif check_backspace() then
--        fallback()
--      else
--        fallback()
--      end
--    end, {
--      "i",
--      "s",
--    }),
--    ["<S-Tab>"] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_prev_item()
--      elseif luasnip.jumpable(-1) then
--        luasnip.jump(-1)
--      else
--        fallback()
--      end
--    end, {
--      "i",
--      "s",
--    }),
--  },
--  formatting = {
--    fields = { "kind", "abbr", "menu" },
--    format = function(entry, vim_item)
--      -- Kind icons
--      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
--      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
--      vim_item.menu = ({
--        nvim_lsp = "[LSP]",
--        luasnip = "[Snippet]",
--        buffer = "[Buffer]",
--        path = "[Path]",
--      })[entry.source.name]
--      return vim_item
--    end,
--  },
--  sources = {
--    { name = "nvim_lsp" },
--    { name = "luasnip" },
--    { name = "buffer" },
--    { name = "path" },
--  },
--  confirm_opts = {
--    behavior = cmp.ConfirmBehavior.Replace,
--    select = false,
--  },
--  window = {
--    documentation = {
--      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
--    },
--  },
--  experimental = {
--    ghost_text = false,
--    native_menu = false,
--  },
--}



--local lspkind = require('lspkind')
--lspkind.init()
--lspkind.init({
--    with_text = true,
--    preset = 'codicons',
--})

--cmp.setup ({
--
--    formatting = {
--        format = function (entry, vim_item)
--            
--            vim_item.kind = lspkind.presets.default[vim_item.kind]
--            vim.item.menu = ({
--                nvim_lsp = "[LSP]",
--                look = "[Dict]",
--                buffer = "[Buffer]",
--            })[entry.source.name]
--            return vim_item
--        end
--    }
--})

--cmp.setup() --{
  --formatting = {
    --format = lspkind.cmp_format({
      --mode = 'symbol', -- show only symbol annotations
      --maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      --ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      --before = function (entry, vim_item)
        --return vim_item
      --end
    --})
  --}
--}


local cmp = require('cmp')

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-n>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      --{ name = 'vsnip' }, -- For vsnip users.
       { name = 'luasnip' }, -- For luasnip users.
       { name = 'buffer' },
       { name = 'path' },
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    }),
    
    formatting = {
        format = function (entry, vim_item)
            
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            vim.item.menu = ({
                nvim_lsp = "[LSP]",
                look = "[Dict]",
                buffer = "[Buffer]",
            })[entry.source.name]
            return vim_item
        end
--    
    },
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  --cmp.setup.cmdline({ '/', '?' }, {
  --  mapping = cmp.mapping.preset.cmdline(),
  --  sources = {
  --    { name = 'buffer' }
  --  }
  --})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--  cmp.setup.cmdline(':', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = cmp.config.sources({
--      { name = 'path' }
--    }, {
--      { name = 'cmdline' }
--    })
--  })
--
  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
