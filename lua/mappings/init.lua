local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' ' 

-- Moving windows
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-l>', '<c-w>l', opts)

map('i', 'jk', '<esc>', opts)
map('i', '<C-s>', '<Esc>:w<CR>i', opts)
map('n', '<C-s>', ':w<CR>', opts)
map('n', '<C-m>', ':<C-u>noh<CR><C-l>', {noremap = true, silent = true})

-- Enviroment reloads
map('n', '<leader>ev', ':split $MYVIMRC<CR>', opts)
map('n', '<leader>sv', ':source $MYVIMRC<CR>', opts)

-- Telescope 
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)

-- Flutter
map('n', '<leader>fr', ':Telescope flutter commands<CR>', opts)

-- Move highlighted lines
map('v', 'J', ":m '>+1<CR>gv=gv", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)

map('x', '<leader>p', "\"_dp", opts)

-- Explorer
map("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
map("n", "gR", "<cmd>Trouble lsp_references<cr>", opts)
