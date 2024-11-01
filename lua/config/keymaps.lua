-- local opts = { noremap = true, silent = true }
-- local builtin = require('telescope.builtin')
-- local term_opts = { silent = true }
--
-- -- Shorten function name
-- local keymap = vim.api.nvim_set_keymap

local function map(mode, keys, command)
    vim.api.nvim_set_keymap(mode, keys, command, { noremap = true, silent = true })
end

-- Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigation stuff
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprev<CR>")
map("n", "hs", ":split<CR>")
map("n", "vs", ":vs<CR>")

-- Press jk fast to exit insert mode 
map("i", "jk", "<ESC>")

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<leader>v", ":vs +terminal | startinsert<CR>")
map("n", "<leader>h", ":split +terminal | startinsert<CR>")

-- Better paste
map("v", "p", '"_dP')

-- Comment
map("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
map("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- Move between tabs
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
map("n", "<leader>6", "6gt")
map("n", "<leader>7", "7gt")
map("n", "<leader>8", "8gt")
map("n", "<leader>9", "9gt")
map("n", "<leader>w", ":bd<CR>")
map("n", "<leader>n", ":tabnew<CR>")

-- Normal Map
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprev<CR>")
map("n", "hs", ":split<CR>")
map("n", "vs", ":vs<CR>")

-- Explore
-- map("n", "<leader>e", ":Sex<CR>")
map("n", "<leader>e", ":tabnew | Explore<CR>")

-- Telescope keybinds
map('n', 'ff', ":Telescope find_files<CR>")
map('n', 'fg', ":Telescope live_grep<CR>")
map('n', 'fb', ":Telescope buffers<CR>")
map('n', 'fh', ":Telescope help_tags<CR>")

-- Move lines around
map('n', '<A-j>', ":m .+1<CR>==")
map('n', '<A-k>', ":m .-2<CR>==")
map('i', '<A-j>', ":m .+1<CR>==gi")
map('i', '<A-k>', ":m .-2<CR>==gi")
map('v', '<A-j>', ":m '>+1<CR>gv=gv")
map('v', '<A-k>', ":m '<-2<CR>gv=gv")
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")

