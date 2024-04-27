-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local luasnip = require("luasnip")
luasnip.filetype_extend("typescriptreact", { "html" })
require("luasnip/loaders/from_vscode").lazy_load()

local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {},
  },
})

-- h1 yazdigimizda tag olusturmaya yarar
--
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.tailwindcss.setup({
  settings = {
    onIgnoredFiles = "off",
  },
})
