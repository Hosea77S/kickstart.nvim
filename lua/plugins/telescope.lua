return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup({
                defaults = {
                    mappings = {
                        n = {['<c-d>'] = require('telescope.actions').delete_buffer},
                    },
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>sf', builtin.find_files,   { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>sg', builtin.live_grep,    { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>sb', builtin.buffers,      { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>sh', builtin.help_tags,    { desc = 'Telescope help tags' })
            vim.keymap.set('n', '<leader>sk', builtin.current_buffer_fuzzy_find,    { desc = 'Telescope find in buffer' })
        end
    },
    -- It sets vim.ui.select to telescope. That means for example that 
    -- neovim core stuff can fill the telescope picker. 
    -- Example would be lua vim.lsp.buf.code_action().
    {
       'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
