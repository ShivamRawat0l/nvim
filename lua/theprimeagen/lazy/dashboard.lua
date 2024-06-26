return {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
        }
    end,
    requires = { 'nvim-tree/nvim-web-devicons' }
}