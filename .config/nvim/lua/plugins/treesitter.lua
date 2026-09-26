return {
  "nvim-treesitter/nvim-treesitter",
  -- Stay on master: old require("nvim-treesitter.configs") API.
  branch = "master",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "kotlin",
        -- swift omitted: needs tree-sitter generate --no-bindings, which
        -- conflicts with current tree-sitter-cli. Add later with a matching CLI.
        "lua",
        "vim",
        "vimdoc",
        "query",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "c",
        "cpp",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
