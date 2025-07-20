return {
    -- mason.nvim is a Neovim plugin that allows you to easily manage external editor tooling such as
    -- LSP servers, DAP servers, linters, and formatters through a single interface.
    --
    -- Packages are installed in Neovim's data directory (:h standard-path) by default.
    --
    -- Executables are linked to a single bin/ directory, which mason.nvim will add to Neovim's PATH during setup

    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    -- This is a seperate plugin is for automatically installing and automatically enabling
    -- installed plugins, as opposed to letting mason do it (i think)
    --
    -- It also, among other things, translates between nvim-lspconfig server names and mason.nvim package names
    -- (e.g. lua_ls <-> lua-language-server)

    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                -- ensure lsps are on system
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "clangd",
                    "vhdl_ls",
                    --"pylsp"
                }
            })
        end
    },

    -- This plugin allows the editor (using lspconfig) to communicate with the LSPs
    -- It's the Nvim LSP Client

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            -- lspconfig.[SomeLSP_Server].setup({
                -- cmd = {},
                -- filetypes = {},
                -- capabilities = {},
                -- settings = {},
            -- })
            lspconfig.lua_ls.setup({})

            lspconfig.bashls.setup({})

            lspconfig.clangd.setup({
                cmd = { 'clangd' },
                filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
                root_markers = {
                    '.clangd',
                    '.clang-tidy',
                    '.clang-format',
                    'compile_commands.json',
                    'compile_flags.txt',
                    'configure.ac', -- AutoTools
                    '.git',
                },
                capabilities = {
                    textDocument = {
                        completion = {
                            editsNearCursor = true,
                        },
                    },
                    offsetEncoding = { 'utf-8', 'utf-16' },
                },
            })

            lspconfig.vhdl_ls.setup({
                cmd = {'vhdl_ls'},
                filetypes = {'vhd', 'vhdl'},
                root_markers = {
                    'vhdl_ls.toml',
                    '.vhdl_ls.toml',
                },
            })

            --[[
            lspconfig.pylsp.setup({
                cmd = { 'pylsp' },
                filetypes = { 'python' },
                root_markers = {
                    'pyproject.toml',
                    'setup.py',
                    'setup.cfg',
                    'requirements.txt',
                    'Pipfile',
                    '.git',
                },
            })
            ]]

            -- type `:h vim.lsp.buf` for documentation on lsp functions

            vim.keymap.set( 'n',    'K',    vim.lsp.buf.hover,          { desc = "Display hover information about symbol under cursor"})
            vim.keymap.set('n',     'grn',  vim.lsp.buf.rename,         { desc = '[R]e[n]ame'})
            vim.keymap.set({'n', 'x'}, 'gra',  vim.lsp.buf.code_action, { desc = '[G]oto Code [A]ction'})
            vim.keymap.set('n',     'grD',  vim.lsp.buf.declaration,    { desc = '[G]oto [D]eclaration'})

            vim.keymap.set('n', 'grr',  require('telescope.builtin').lsp_references,                { desc = '[G]oto [R]eferences'})
            vim.keymap.set('n', 'gri',  require('telescope.builtin').lsp_implementations,           { desc = '[G]oto [I]mplementation'})
            vim.keymap.set('n', 'grd',  require('telescope.builtin').lsp_definitions,               { desc = '[G]oto [D]efinition'})
            vim.keymap.set('n', 'gO',   require('telescope.builtin').lsp_document_symbols,          { desc = 'Open Document Symbols'})
            vim.keymap.set('n', 'gW',   require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = 'Open Workspace Symbols'})
            vim.keymap.set('n', 'grt',  require('telescope.builtin').lsp_type_definitions,          { desc = '[G]oto [T]ype Definition'})
        end
    }
}
