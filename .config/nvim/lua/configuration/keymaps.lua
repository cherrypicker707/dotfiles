-- Keymaps for Neovim

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<left>', '<cmd>echo "use h to move"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "use l to move"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "use k to move"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "use j to move"<CR>')

vim.keymap.set('n', '<leader>h', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>v', '<cmd>split<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

vim.keymap.set('n', '-', '<cmd>vertical resize -1<CR>')
vim.keymap.set('n', '=', '<cmd>vertical resize +1<CR>')
vim.keymap.set('n', '_', '<cmd>horizontal resize -1<CR>')
vim.keymap.set('n', '+', '<cmd>horizontal resize +1<CR>')

vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>')
