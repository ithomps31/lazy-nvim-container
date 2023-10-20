return {
  { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
  "rose-pine/neovim",
  "ThePrimeagen/vim-be-good",

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.api.nvim_command, 'MasonUpdate')
      end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
}

