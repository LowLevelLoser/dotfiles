------------------------
-- package management --
------------------------
 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- colorscheme --
    {'catppuccin/nvim', name = "catppuccin"},
    'folke/tokyonight.nvim',


    -- indent lines --
    'lukas-reineke/indent-blankline.nvim',

    -- tree-sitter (higlighting) --
    {
      'nvim-treesitter/nvim-treesitter',
      dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
     },
      config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
      end,
    },
    'nvim-treesitter/playground',


    -- autopairs --
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end,
    },

    -- telescope --
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- undotree --
    'mbbill/undotree',

    -- tabline --
    {
        'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- lua line --
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    },


    -- lsp zero --
    {
     'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
            -- icons
            {'nvim-tree/nvim-web-devicons'}
        }
    },

    -- cmp plugins --
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    --lsp stuff 
    'neovim/nvim-lspconfig',

    -- Snippets --
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    -- Autocompletion icons (doesn't work)--
    'onsails/lspkind.nvim',

    -- diagnostics with trouble --
    {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
             position = "bottom", -- position of the list can be: bottom, top, left, right
             height = 10, -- height of the trouble list when position is top or bottom
             width = 50, -- width of the list when position is left or right
             icons = true, -- use devicons for filenames
             mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
             fold_open = "", -- icon used for open folds
             fold_closed = "", -- icon used for closed folds
             group = true, -- group results by file
             padding = true, -- add an extra new line on top of the list
             action_keys = { -- key mappings for actions in the trouble list
             -- map to {} to remove a mapping, for example:
             -- close = {},
             close = "q", -- close the list
             cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
             refresh = "r", -- manually refresh
             jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
             open_split = { "<c-x>" }, -- open buffer in new split
             open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
             open_tab = { "<c-t>" }, -- open buffer in new tab
             jump_close = {"o"}, -- jump to the diagnostic and close the list
             toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
             toggle_preview = "P", -- toggle auto_preview
             hover = "K", -- opens a small popup with the full multiline message
             preview = "p", -- preview the diagnostic location
             close_folds = {"zM", "zm"}, -- close all folds
             open_folds = {"zR", "zr"}, -- open all folds
             toggle_fold = {"zA", "za"}, -- toggle fold of current file
             previous = "k", -- previous item
             next = "j" -- next item
            },
            indent_lines = true, -- add an indent guide below the fold icons
            auto_open = false, -- automatically open the list when you have diagnostics
            auto_close = false, -- automatically close the list when you have no diagnostics
            auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
            auto_fold = false, -- automatically fold a file trouble list at creation
            auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
            signs = {
                -- icons / text used for a diagnostic
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "﫠"
            },
            use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
                }
              end
    },

    -- multiline edit --
    'mg979/vim-visual-multi',

    -- which key -- it got annoying use it if you want
    --{
    --    "folke/which-key.nvim",
    --    config = function()
    --    vim.o.timeout = true
    --    vim.o.timeoutlen = 800
    --    require("which-key").setup({
    --    -- your configuration comes here
    --    -- or leave it empty to use the default settings
    --    -- refer to the configuration section below
    --    })
    --    end,
    --},

    -- file tree --
    {
        'nvim-tree/nvim-tree.lua',
        requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    },

    -- smart splits --
    'mrjones2014/smart-splits.nvim',

    -- notifications --
    --'rcarriga/nvim-notify',

    -- context --
    {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      opts = {
        -- configurations go here
      },
    },

    -- vimpeccable (useful for configuration stuffs) --
    'svermeulen/vimpeccable',

    -- terminal toggle --
    {
  -- amongst your other plugins
        {'akinsho/toggleterm.nvim', version = "*", config = true}
  -- or
  --{'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
    },

    -- custom start screen --
    {
    'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },

    -- minimap --
    'stevearc/aerial.nvim',

    -- scroll bar --
    'petertriho/nvim-scrollbar',
})
