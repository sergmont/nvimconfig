-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
--keymap settings

local dg = vim.diagnostic
dg.config({ virtual_text = true })
--dg.globals

local keymap = vim.keymap
-- keymap.set('n','<leader> ','   ' ,{})
keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "remove highlights" })
keymap.set("n", "<leader>gK", function()
	local new_config = not vim.diagnostic.config().virtual_lines
	vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = "Toggle diagnostic virtual_lines" })
