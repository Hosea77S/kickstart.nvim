vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set fileformat=unix")

--------------------------------------------------------------------------------
-- TAB settings (using vim scripting in lua)
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- UNRELATED: for some reason <C-n> in insert mode opens text suggestions?

--------------------------------------------------------------------------------
-- VISUAL SETTINGS
vim.cmd("set nowrap")
vim.cmd("set cursorline")
vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldlevelstart = 2
vim.o.foldnestmax = 4
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldtext = ""
vim.opt.foldcolumn = "0"
vim.opt.fillchars:append({fold = " "})
vim.o.foldlevelstart = 2
vim.o.foldnestmax = 4
-- zR open all folds
-- zM close all open folds
-- za toggles the fold at the cursor


--------------------------------------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
