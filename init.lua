--------------------------------------------------------------------------------
-- TAB settings (using vim scripting in lua)
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--------------------------------------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\' 

--------------------------------------------------------------------------------
-- LAZY: a plugin manager
-- source: https://github.com/folke/lazy.nvim

-- Install nvim if not found (aka bootstrap)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

--------------------------------------------------------------------------------
local plugins = {
  {
    "catppuccin/nvim", lazy = false, name = "catppuccin", priority = 1000
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    -- use :TSUpdate to update parsers
    "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"
  }
}

local opts = {}

-- Setup/Load lazy.nvim
require("lazy").setup(
  plugins,
  opts
)

--------------------------------------------------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })

--------------------------------------------------------------------------------
-- :TSBufEnable {module} " enable module on current buffer
-- :TSBufDisable {module} " disable module on current buffer
-- :TSEnable {module} [{ft}] " enable module on every buffer. If filetype is specified, enable only for this filetype.
-- :TSDisable {module} [{ft}] " disable module on every buffer. If filetype is specified, disable only for this filetype.
-- :TSModuleInfo [{module}] " list information about modules state for each filetype
require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "markdown", "markdown_inline" },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
})

--------------------------------------------------------------------------------
-- From https://github.com/catppuccin/nvim
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
