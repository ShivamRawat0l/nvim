vim.g.mapleader = " "
-- Replacing Default Ex with Oil
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", require("oil").open)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
-- Custom Remaps
vim.keymap.set("n", "t1", ":tabmove 0<CR>", { silent = true })
vim.keymap.set("n", "t2", ":tabmove 2<CR>", { silent = true })
vim.keymap.set("n", "t3", ":tabmove 3<CR>", { silent = true })
vim.keymap.set("n", "t4", ":tabmove 4<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-s>", "<Esc><leader>f:w<CR>",
    { expr = false, silent = true, noremap = false, remap = true })
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
-- For use default preset and it work with dot
vim.keymap.set('n', 'zj', require('treesj').join)
vim.keymap.set('n', 'zg', require('treesj').toggle)
vim.keymap.set('n', 'zs', require('treesj').split)
-- For extending default preset with `recursive = true`, but this doesn't work with dot


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
