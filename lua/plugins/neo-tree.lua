return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        --{"3rd/image.nvim", opts = {}},
    },
    config = function()
        vim.keymap.set( 'n', '<leader>N', ':Neotree filesystem reveal position=left reveal<CR>', { desc = 'Opens filesystem tree on left'})
        vim.keymap.set( 'n', '<leader>n', ':Neotree action=focus source=filesystem position=float toggle=true reveal<CR>', { desc = 'Opens floating filesystem tree'})
        vim.keymap.set( 'n', '<leader>g', ':Neotree action=focus source=git_status position=left toggle=true reveal<CR>', { desc = 'Opens floating filesystem tree'})

        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                }
            },
            window = {
                mappings = {
                    ["<space>"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    }, -- end ["<space>"]
                    ["<2-LeftMouse>"] = "open",
                    ["<cr>"] = "open",
                    ["<esc>"] = "cancel", -- close preview or floating neo-tree window
                    ["s"] = "open_rightbelow_vs",
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
                    ['Y'] = function(state)
                            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
                            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
                            local node = state.tree:get_node()
                            local filepath = node:get_id()
                            local filename = node.name
                            local modify = vim.fn.fnamemodify

                            local results = {
                              filepath,
                              modify(filepath, ':.'),
                              modify(filepath, ':~'),
                              filename,
                              modify(filename, ':r'),
                              modify(filename, ':e'),
                            }

                            -- absolute path to clipboard
                            local i = vim.fn.inputlist({
                              'Choose to copy to clipboard:',
                              '1. Absolute path: ' .. results[1],
                              '2. Path relative to CWD: ' .. results[2],
                              '3. Path relative to HOME: ' .. results[3],
                              '4. Filename: ' .. results[4],
                              '5. Filename without extension: ' .. results[5],
                              '6. Extension of the filename: ' .. results[6],
                            })

                            if i > 0 then
                              local result = results[i]
                              if not result then return print('Invalid choice: ' .. i) end
                              vim.fn.setreg('"', result)
                              vim.notify('Copied: ' .. result)
                            end
                          end
                                    }, -- end mappings
                                } -- end window
                            })
                        end
}
