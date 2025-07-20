vim.keymap.set( 'i', 'jj', '<escape>', { desc = 'escape insert mode'})

vim.keymap.set( 'n', '<C-s>', ':w<CR>',  { desc = 'Saves current buffer'})
vim.keymap.set( 'n', '<C-q>', ':q!<CR>', { desc = 'Quit current buffer without saving'})
vim.keymap.set( 'n', '<C-X>', ':wqa!<CR>', { desc = 'Quit every buffer with saving'})

vim.keymap.set( 'n', 'o',   'o<escape>', { desc = 'new line below without insert mode'})
vim.keymap.set( 'n', 'O',   'O<escape>', { desc = 'new line above without insert mode'})

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-]>', ':+tabn<cr>', {})
vim.keymap.set('n', '<C-[>', ':-tabn<cr>', {})
