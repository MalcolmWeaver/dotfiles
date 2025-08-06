return {
    'xixiaofinland/sf.nvim',
    tag = 'v1.9.0',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'ibhagwan/fzf-lua', -- no need if you don't use listing metadata feature
    },

    config = function()
        require('sf').setup() -- Important to call setup() to initialize the plugin!
    end
}
