return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED: initialize Harpoon
    harpoon:setup({
      settings = {
        -- Prevent JSON encode crash from function reference
        refresh_projects_b4update = false,
      },
    })

    -- ======================
    -- User commands (:HarpoonAdd, :HarpoonMenu, :Harpoon1..9)
    -- ======================
    vim.api.nvim_create_user_command("HarpoonAdd", function()
      harpoon:list():add()
    end, {})

    vim.api.nvim_create_user_command("HarpoonMenu", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, {})

    for i = 1, 9 do
      vim.api.nvim_create_user_command("Harpoon" .. i, function()
        harpoon:list():select(i)
      end, {})
    end

    -- ======================
    -- Keymaps (change these to what feels good)
    -- ======================
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon add file" })
    vim.keymap.set("n", "<leader>hd", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
    for i = 1, 5 do
      vim.keymap.set("n", "<leader>h" .. i, function() harpoon:list():select(i) end, { desc = "Harpoon to file " .. i })
    end
  end,
}

