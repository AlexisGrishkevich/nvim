local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", '<Space>', '<NOP>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Normal mode -----------------------------------------------------------
-- Better windows navigation 
keymap("n", '<C-h>', '<C-w>h', opts)
keymap("n", '<C-j>', '<C-w>j', opts)
keymap("n", '<C-k>', '<C-w>j', opts)
keymap("n", '<C-l>', '<C-w>l', opts)

-- Explorer
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigating tabs
keymap("n", "<Leader><TAB><TAB>", ":tabe<CR>", opts)
keymap("n", "<TAB>", "gt<CR>", opts)
keymap("n", "<S-TAB>", "gT<CR>", opts)

-- No hlsearch 
keymap("n", "<Leader>h", ":set hlsearch!<CR>", opts)

-- Insert mode -----------------------------------------------------------
-- I hate escape
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Visual mode -----------------------------------------------------------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block mode -----------------------------------------------------
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv'", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv'", opts)
