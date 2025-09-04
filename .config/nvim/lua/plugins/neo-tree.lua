return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Toggle / reveal Neo-tree with Ctrl+n
        vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
    end
}
