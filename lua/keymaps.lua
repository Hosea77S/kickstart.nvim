vim.keymap.set( 'i', 'jj', '<escape>', { desc = 'escape insert mode'})

vim.keymap.set( 'n', '<C-s>', ':w<CR>',  { desc = 'Saves current buffer'})
vim.keymap.set( 'n', '<C-q>', ':q!<CR>', { desc = 'Quit current buffer without saving'})
vim.keymap.set( 'n', '<C-X>', ':wqa!<CR>', { desc = 'Quit every buffer with saving'})

-- vim.keymap.set( 'n', 'o',   'ox<escape>x', { desc = 'new line below without insert mode'})
-- vim.keymap.set( 'n', 'O',   'Ox<escape>x', { desc = 'new line above without insert mode'})
vim.keymap.set( 'n', '<leader>o',   'ox<escape>x', { desc = 'new line below without insert mode'})
vim.keymap.set( 'i', '{<CR>',       '{<CR>}<Esc>O', { desc = 'autocomplete curly braces'})

vim.keymap.set( 'v', '<leader>"',   'c\"<C-r>"\"<escape>',  { desc = 'surround selection with double quotes'})
vim.keymap.set( 'v', '<leader>\'',  'c\'<C-r>"\'<escape>',  { desc = 'surround selection with single quotes'})
vim.keymap.set( 'v', '<leader>(',   'c(<C-r>")<escape>',    { desc = 'surround selection with parenthesis'})
vim.keymap.set( 'v', '<leader>{',   'c{<C-r>"}<escape>',    { desc = 'surround selection with curly braces'})

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-]>', ':+tabn<cr>', {})
vim.keymap.set('n', '<C-[>', ':-tabn<cr>', {})

vim.keymap.set({'n', 'v'}, '<C-c>', '"+y', {})
vim.keymap.set({'n', 'v'}, '<C-p>', '"+p', {})

vim.keymap.set('n', '<leader>r', ':%s//', {})
