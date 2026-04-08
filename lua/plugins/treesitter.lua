return{
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        -- local configs = require("nvim-treesitter.configs")
        local configs = require("nvim-treesitter.config") -- removed the 's' from configs
        configs.setup({
            ensure_installed = { "c", "cpp", "lua", "markdown", "markdown_inline", "json5", "make", "python",
                "vhdl", "verilog", "tcl", "json", "jinja", "python"
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
