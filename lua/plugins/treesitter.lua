-- TREE SITTER WORKS FOR INDENTING AND HIGHLIGHTING TREE CHUNKS, SUCH AS {[( )]} IN DIFFERENT LANGUAGES.
-- indents by selecting chunks of code, and pressing '='
return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		priority = 999,
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "lua", "javascript", "typescript", "vim", "c" },
			sync_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
		},
	},
	{
		--automatically add HTML and JSX closing tags
		"windwp/nvim-ts-autotag",
		opts = {},
	},
}
