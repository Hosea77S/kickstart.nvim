return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
        {"3rd/image.nvim", opts = {}},
    },
    config = function()
        vim.keymap.set( 'n', '<leader>n', ':Neotree filesystem reveal left<CR>', { desc = 'Opens filesystem tree on left'})
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["<space>"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    }, -- end ["<space>"]
                    ["<2-LeftMouse>"] = "open",
                    ["<cr>"] = "open",
                    ["<esc>"] = "cancel", -- close preview or floating neo-tree window
                    ["s"] = "open_vsplit",
                    ["t"] = "open_tabnew",
                    ["P"] = {
                        "toggle_preview",
                        config = {
                            use_float = true,
                            use_snacks_image = true,
                            use_image_nvim = true,
                        },
                    }, -- ["p"]
                    
                    ["Z"] = "close_all_nodes",
                    ["z"] = "expand_all_subnodes",
                }, -- end mappings
            } -- end window
        })
    end
}
