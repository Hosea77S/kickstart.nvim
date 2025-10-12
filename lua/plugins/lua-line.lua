return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            -- options = {theme = 'papercolor_dark'},
            options = {theme = 'auto'},
        })
    end
}
