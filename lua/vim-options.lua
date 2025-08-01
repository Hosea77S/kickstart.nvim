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
vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldlevelstart = 0
vim.o.foldnestmax = 6
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"

function MyFoldText()
    local lines = vim.v.foldend - vim.v.foldstart + 1
    local first = vim.fn.getline(vim.v.foldstart)
    return first .. "  ↙ " .. lines .. " lines"
end

-- vim.opt.foldtext = 'v:lua.vim.treesitter.foldtext()'
vim.opt.foldtext = 'v:lua.MyFoldText()'
-- vim.o.foldtext = ""
vim.opt.foldcolumn = "2"
vim.opt.fillchars:append({fold = " "})
-- zR open all folds
-- zM close all open folds
-- za toggles the fold at the cursor

--------------------------------------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
