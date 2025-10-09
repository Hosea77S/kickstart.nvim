vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set fileformat=unix")
vim.cmd("filetype on")

--------------------------------------------------------------------------------
-- TAB settings (using vim scripting in lua)
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=0")

-- UNRELATED: for some reason <C-n> in insert mode opens text suggestions?

--------------------------------------------------------------------------------
-- VISUAL SETTINGS
vim.cmd("set nowrap")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=12")
vim.cmd("set foldopen-=block")
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 0
vim.opt.foldnestmax = 99

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

function MyFoldText()
    local lines = vim.v.foldend - vim.v.foldstart + 1
    local first = vim.fn.getline(vim.v.foldstart)
    return first .. "  ↙ " .. lines .. " lines"
end
-- vim.wo.foldtext = 'v:lua.vim.treesitter.foldtext()'
vim.opt.foldtext = 'v:lua.MyFoldText()'
-- vim.o.foldtext = ""
vim.opt.foldcolumn = "0"
vim.opt.fillchars:append({fold = " "})

--------------------------------------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
