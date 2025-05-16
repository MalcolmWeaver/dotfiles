return {
    'VonHeikemen/lsp-zero.nvim',

    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    }, 
    config = function()
        local lspconfig = require('lspconfig')
        local zero = require('lsp-zero')
        zero.extend_lspconfig()
        zero.on_attach(function(client, bufnr)
            -- (Your keybindings here, e.g., zero.default_keymaps({ buffer = bufnr }))
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
            vim.keymap.set('n', '<M-s>', vim.lsp.buf.signature_help, { buffer = bufnr })
        end)

        local lang_servers = {
            apex_ls = {
                cmd = {
                    "java",
                    "-jar",
                    vim.fn.expand('$HOME/apex-jorje-lsp.jar'),
                },
                apex_enable_semantic_errors = false,
                apex_enable_completion_statistics = false,
                filetypes = { 'apex' },
            },
            lua_ls = zero.nvim_lua_ls(),
            -- statix = {},
            nil_ls = {},
        }

        for _, lsp in ipairs(vim.tbl_keys(lang_servers)) do
            lspconfig[lsp].setup(lang_servers[lsp])
        end
        lspconfig.lua_ls.setup(zero.nvim_lua_ls())
        lspconfig.basedpyright.setup({})
        lspconfig.clangd.setup({})
        lspconfig.nil_ls.setup({})
    end,
}
