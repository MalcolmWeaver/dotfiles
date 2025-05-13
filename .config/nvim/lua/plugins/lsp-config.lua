return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim", -- for vim runtime/library type info
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.basedpyright.setup({
            capabilities = capabilities
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        -- lspconfig.ruff.setup({})
        lspconfig.clangd.setup({
            capabilities = capabilities
        })
        -- lspconfig.apex_ls.setup({
        --     capabilities = capabilities
        -- })
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local c = vim.lsp.get_client_by_id(args.data.client_id)
                if not c then return end

                if vim.bo.filetype == "lua" then
                    -- Format the current buffer on save
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                        end,
                    })
                end
            end,
        })
        local opts = { noremap = true, silent = true }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<M-s>', vim.lsp.buf.signature_help, {})
    end

}
