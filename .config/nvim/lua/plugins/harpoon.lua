return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },

    --     local harpoon = require("harpoon")
    --
    --     -- Configure Harpoon
    --     harpoon:setup({}) -- You can add configuration options here if needed
    --
    --     -- Define keybindings (using `<leader>` as your leader key)
    --     vim.keymap.set("n", "<leader>ha", function() harpoon:list() end, { desc = "Show Harpoon List" })
    --     vim.keymap.set("n", "<leader>hm", function() harpoon:mark() end, { desc = "Mark File in Harpoon" })
    --     vim.keymap.set("n", "<leader>hj", function() harpoon:nav(1) end, { desc = "Go to Harpoon Mark 1" })
    --     vim.keymap.set("n", "<leader>hk", function() harpoon:nav(2) end, { desc = "Go to Harpoon Mark 2" })
    --     vim.keymap.set("n", "<leader>hl", function() harpoon:nav(3) end, { desc = "Go to Harpoon Mark 3" })
    --     vim.keymap.set("n", "<leader>h;", function() harpoon:nav(4) end, { desc = "Go to Harpoon Mark 4" })
    --     vim.keymap.set("n", "<leader>hn", function() harpoon:next() end, { desc = "Go to Next Harpoon Mark" })
    --     vim.keymap.set("n", "<leader>hp", function() harpoon:prev() end, { desc = "Go to Previous Harpoon Mark" })
    --
    --     -- Optional: Configure UI (requires a UI plugin like `telescope.nvim` or `nui.nvim`)
    --     -- Example with Telescope:
    --     vim.keymap.set("n", "<leader>hf", function() require("telescope").extensions.harpoon.find_files() end,
    --         { desc = "Find Harpoon Files with Telescope" })
    -- end
}
