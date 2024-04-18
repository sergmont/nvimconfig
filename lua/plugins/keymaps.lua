vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search Highlights" })

--split window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Splits are made equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split screen" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move left between splits" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move down between splits" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move up between splits" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move right between splits" })
-- TABS
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "create new tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- FILE TREE INTERACTIONS
vim.keymap.set("n", "<leader>ft", ":Neotree filesystem reveal toggle<CR>")
return {}
