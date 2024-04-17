local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.cursorline = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--search settings
opt.ignorecase = true
opt.smartcase = true

-- visual options
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = "yes"

return {
  vim.cmd("set splitbelow splitright"),
}
