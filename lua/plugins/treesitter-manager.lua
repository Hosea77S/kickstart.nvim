return{
    -- "nvim-treesitter/nvim-treesitter",
    -- branch = 'main',
    -- lazy = false,
    -- build = ":TSUpdate",
    -- config = function()
    --     local configs = require("nvim-treesitter.config")
    --     configs.setup({
    --         ensure_installed = { "c", "cpp", "lua", "markdown", "markdown_inline", "json5", "make", "python",
    --             "vhdl", "verilog", "tcl", "json", "jinja", "python"
    --         },
    --         highlight = {
    --             enable = true,
    --         },
    --         indent = {
    --             enable = true,
    --         }
    --     })
    -- end
 
    {
        "romus204/tree-sitter-manager.nvim",
        dependencies = {}, -- tree-sitter CLI must be installed system-wide
        config = function()
            require("tree-sitter-manager").setup({
                 -- Default Options
                 ensure_installed = {"python", "cpp", "vhdl", "systemverilog", "json", "json5"},
                 -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
                 -- auto_install = false, -- if enabled, install missing parsers when editing a new file
                 highlight = {"python", "cpp", "lua", "vhdl", "systemverilog", "json", "json5"},
                 -- languages = {}, -- override or add new parser sources
                 -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
                 -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
            })
        end
    }
}
