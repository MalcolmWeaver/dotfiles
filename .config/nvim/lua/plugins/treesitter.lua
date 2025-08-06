return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSupdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end

}
