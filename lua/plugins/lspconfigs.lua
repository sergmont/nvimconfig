-- FOR SHORTCUTS, AND WHATNOT, USE :help lsp-defaults
return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "html", "cssls", "jsonls" },
		},
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			{
				"neovim/nvim-lspconfig",
				config = function()
					local lsp = vim.lsp
					lsp.enable("lua_ls")
					lsp.enable("ts_ls")
					lsp.enable("cssls")
					lsp.enable("jsonls")
				end,
			},
		},
	},
}
