require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "rust", "javascript", "typescript", "elixir", "python", "tsx", "cpp", "json", "dockerfile", "make", "go", "proto", "sql", "prisma" },

  sync_install = false,

  -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
  auto_install = false,

  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
    },
  },
}
