return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TS:pdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end

}
