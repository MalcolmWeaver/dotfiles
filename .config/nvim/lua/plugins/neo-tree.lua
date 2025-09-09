return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Show hidden dotfiles
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,   -- show hidden files
                    hide_dotfiles = false,  -- do NOT hide dotfiles
                    hide_gitignored = false, -- optional: show gitignored files
                },
            },
        })
        -- Toggle / reveal Neo-tree with Ctrl+n
        vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
    end
}
