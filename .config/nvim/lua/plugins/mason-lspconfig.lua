return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- web
          "html",
          "cssls",
          "ts_ls",
          -- python
          "basedpyright",
          -- mobile
          "kotlin_language_server",
          -- already useful
          "lua_ls",
          "clangd",
          "bashls",
          -- note: no sourcekit here — not a valid mason-lspconfig server name on this setup
        },
      })
    end,
  },
}
