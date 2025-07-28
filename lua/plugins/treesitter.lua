return{
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "c", "cpp", "lua", "markdown", "markdown_inline", "json5", "make", "python",
                "vhdl", "verilog", "tcl", "json"
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            }
        })
    end
}
