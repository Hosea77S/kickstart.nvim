return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
        },

        config = function()
            require("telescope").setup({
                defaults = {
                    mappings = {
                        n = {['<c-d>'] = require('telescope.actions').delete_buffer},
                    },
                },
                pickers = {
                    find_files = {
                        theme = "ivy"
                    }
                },
                extensions = {
                    fzf = {}
                }
            })

            -- Enable Telescope extensions if they are installed
            pcall(require('telescope').load_extension, 'fzf')
            pcall(require('telescope').load_extension, 'ui-select')

            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>sf', builtin.find_files,                { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>sg', builtin.live_grep,                 { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>sb', builtin.buffers,                   { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>sh', builtin.help_tags,                 { desc = 'Telescope help tags' })
            vim.keymap.set('n', '<leader>sk', builtin.current_buffer_fuzzy_find, { desc = 'Telescope find in buffer' })
            vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols,      { desc = 'List symbols in current buffer' })
            vim.keymap.set('n', '<leader>sm', builtin.keymaps,                   { desc = 'List normal mode keymaps' })
            vim.keymap.set('n', '<leader>sr', builtin.registers,                 { desc = 'Lists vim registers contents' })
            vim.keymap.set('n', '<leader>si', builtin.lsp_implementations,       { desc = 'Goto the implementation of the word under the cursor' })
            vim.keymap.set('n', '<leader>sd', builtin.lsp_definitions,           { desc = 'Goto the definition of the word under the cursor' })
            vim.keymap.set('n', '<leader>sw', builtin.grep_string,               { desc = '[S]earch current [W]ord' })

            vim.keymap.set('n', '<leader>s/', function()
                builtin.live_grep {
                    grep_open_files = true,
                    prompt_title = 'Live Grep in Open Files',
                }
            end, { desc = '[S]earch [/] in Open Files' })

             -- Shortcut for searching your Neovim configuration files
            vim.keymap.set('n', '<leader>sn', function()
                builtin.find_files { cwd = vim.fn.stdpath 'config' }
            end, { desc = '[S]earch [N]eovim files' })

            require "config.telescope.multigrep".setup()
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
