return {
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("moonfly")
        end,
    },

    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     -- priority = 1000,
    --     config = function()
    --         require("tokyonight").setup({
    --             style = "night",
    --             on_colors = function(colors)
    --                 colors.bg = "#000000"
    --             end
    --         })
    --         vim.cmd([[colorscheme tokyonight]])
    --     end,
    --     opts = {},
    -- }

    -- {
    --     "catppuccin/nvim",
    --     lazy = false,
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme "catppuccin"
    --     end
    -- },

    -- {
    --     "loctvl842/monokai-pro.nvim",
    --     config = function()
    --         require("monokai-pro").setup({
    --             filter = "octagon",
    --         })
    --         vim.cmd([[colorscheme monokai-pro]])
    --     end
    -- },

    -- {
    --     'projekt0n/github-nvim-theme',
    --     config = function()
    --         require('github-theme').setup({
    --         })
    --
    --         vim.cmd('colorscheme github_dark_default')
    --     end
    -- },
}
