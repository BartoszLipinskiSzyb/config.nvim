vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- kopiowanie i wklejanie do systemowego schowka
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<C-V>", "\"+p")
vim.keymap.set("v", "<C-V>", "\"+p")

vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww ~/.dotfiles/tmux-sessionizer.sh<CR>")

-- przeskakiwanie o page up/down z automatycznym wyśrodkowaniem kursora
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- przesuwanie zaznaczonego tekstu
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
