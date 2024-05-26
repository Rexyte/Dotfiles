local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

vim.g.mapleader = " "

require("lazy").setup({
  -- Post-install/update hook with neovim command
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'debugloop/telescope-undo.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim',
    }
  },
  
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
    }
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "exosyphon/telescope-color-picker.nvim",
    config = function()
      vim.keymap.set("n", "<leader>uC", "<cmd>Telescope colors<CR>", { desc = "Telescope Color Picker" })
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<CR>", { desc = "Telescope Undo" })
    end,
  },


  {
    "aaronhallaert/advanced-git-search.nvim",
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'tpope/vim-fugitive',
      'tpope/vim-rhubarb',
    },
  },

  'norcalli/nvim-colorizer.lua',

  {
    'loctvl842/monokai-pro.nvim',
    config = function()
      require("monokai-pro").setup()
    end
  },

  -- Neovim tree
  'nvim-tree/nvim-tree.lua',
  -- Neovim tree icons
  'nvim-tree/nvim-web-devicons',

  -- Tabs
  {
    'akinsho/bufferline.nvim',
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',

  -- Snippets
  {
    'L3MON4D3/LuaSnip',
    version = "v2.3.0"
  },
  'rafamadriz/friendly-snippets',

})
