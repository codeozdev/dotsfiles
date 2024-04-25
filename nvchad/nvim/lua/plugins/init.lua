return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },


-- mason kismina bir sey eklersek "MasonInstallAll" diyerek kurulum yapiyoruz. Yukleme olmazsa cikip yeniden yapiyoruz
-- Paket yoneticisi olarak geciyor 

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "html-lsp",
        "css-lsp",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
      },
    },
  },
}
