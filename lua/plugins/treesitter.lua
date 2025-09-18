return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = 'false',
    branch = 'main',
    build = ":tsupdate",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      sync_install = true,
      ensure_installed = {
        "lua",
        "vim",
        "javascript",
        "typescript",
        "markdown",
        "json",
        "html",
      },
    },
    dependencies = { 'windwp/nvim-ts-autotag' },
  },
}

--[[
return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = { "windwp/nvim-ts-autotag" },
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"elixir",
					"heex",
					"javascript",
					"html",
					"typescript",
					"tsx",
					"json",
					"css",
					"markdown",
					"query",
				},
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
			})
		end,
	},
}


  ]]
