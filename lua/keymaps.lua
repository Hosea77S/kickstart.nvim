vim.keymap.set( 'i', 'jj', '<escape>', { desc = 'escape insert mode'})
--------------------------------------------------------------------------------

-- Saving and Exiting
vim.keymap.set( 'n', '<C-s>', ':w<CR>',  { desc = 'Saves current buffer'})
vim.keymap.set( 'n', '<C-q>', ':q!<CR>', { desc = 'Quit current buffer without saving'})
-- vim.keymap.set( 'n', '<C-x>', ':wqa!<CR>', { desc = 'Quit every buffer with saving'})
--------------------------------------------------------------------------------

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })
--------------------------------------------------------------------------------

-- vim.keymap.set( 'n', 'o',   'ox<escape>x', { desc = 'new line below without insert mode'})
-- vim.keymap.set( 'n', 'O',   'Ox<escape>x', { desc = 'new line above without insert mode'})
vim.keymap.set( 'n', '<leader>o',   'ox<escape>x', { desc = 'new line below without insert mode'})
vim.keymap.set( 'i', '{<CR>',       '{<CR>}<Esc>O', { desc = 'autocomplete curly braces'})
--------------------------------------------------------------------------------

vim.keymap.set( 'v', '<leader>"',   'c\"<C-r>"\"<escape>',  { desc = 'surround selection with double quotes'})
vim.keymap.set( 'v', '<leader>\'',  'c\'<C-r>"\'<escape>',  { desc = 'surround selection with single quotes'})
vim.keymap.set( 'v', '<leader>(',   'c(<C-r>")<escape>',    { desc = 'surround selection with parenthesis'})
vim.keymap.set( 'v', '<leader>{',   'c{<C-r>"}<escape>',    { desc = 'surround selection with curly braces'})
--------------------------------------------------------------------------------

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--------------------------------------------------------------------------------

-- TABS
-- Alternative navigation (more intuitive)
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })

-- Tab moving
vim.keymap.set('n', '<leader>tm', ':tabmove<CR>', { desc = 'Move tab' })
vim.keymap.set('n', '<leader>]', ':+tabn<cr>', {})
vim.keymap.set('n', '<leader>[', ':-tabn<cr>', {})
--------------------------------------------------------------------------------

-- Yank
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', {})
-- vim.keymap.set('n', '<leader>yy', '"+yy', {})
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Cut
-- vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', {})
-- vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', {})
-- vim.keymap.set('n', '<leader>dd', '"+dd', {})
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Paste
-- vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', {})
-- Better paste behavior
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

--------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>r', ':%s//', {})

vim.keymap.set('n', '<tab>','i<tab><escape>l', {})

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


-- Splitting & Resizing
vim.keymap.set("n", "<leader>xv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>xh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

