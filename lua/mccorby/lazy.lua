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

require('lazy').setup({
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      'folke/neodev.nvim',
      { 'j-hui/fidget.nvim',       opts = {} },
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
  },

  {
    -- Theme
    -- 'morhetz/gruvbox',
    -- as = 'gruvbox',
    -- config = function()
    --   vim.cmd.colorscheme("gruvbox")
    -- end
    --
    'dracula/vim',
    as = 'dracula',
    config = function()
      vim.cmd.colorscheme('dracula');
    end
    --
  },

  {
    -- Code comment
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  {
    -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    version = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
  },

  -- Utilities
  --------------------
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- Code comment
  'numToStr/Comment.nvim',
  -- Work with multiple files
  'theprimeagen/harpoon',
  -- Github copilot
  'github/copilot.vim',

  -- copilot chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },

  {
    -- Zen mode
    'folke/zen-mode.nvim',
    config = function()
      require("zen-mode").setup {}
    end
  },
  'eandrju/cellular-automaton.nvim',
  -- Error/Warning message
  {
    'folke/trouble.nvim',
    config = function()
      require("trouble").setup {}
    end
  },

  -- Icons
  'nvim-tree/nvim-web-devicons',

  { "wakatime/vim-wakatime", lazy = false },

  -- auto pair
  { "jiangmiao/auto-pairs" },

  { 'nvim-java/nvim-java' },

  {
    "epwalsh/pomo.nvim",
    dependencies = {
      "rcarriga/nvim-notify"
    },
    config = function()
      require("pomo").setup(
        {
          sessions = {
            pomodoro = {
              { name = "Work",        duration = "25m" },
              { name = "Short Break", duration = "5m" },
              { name = "Work",        duration = "25m" },
              { name = "Short Break", duration = "5m" },
              { name = "Work",        duration = "25m" },
              { name = "Long Break",  duration = "15m" },
            },
          },
        }
      )
    end
  },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup()
    end
  },
})
