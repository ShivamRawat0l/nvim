return {
    {
        'neovim/nvim-lspconfig'
    },
    {
        'jose-elias-alvarez/null-ls.nvim'
    },
    {
        'MunifTanjim/prettier.nvim',
        config = function()
            require("prettier").setup()
        end
    }
}
