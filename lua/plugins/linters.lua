return {
	--	{
	--		"nvimtools/none-ls.nvim",
	--		dependencies = {
	--			"nvimtools/none-ls-extras.nvim",
	--		},
	--		config = function()
	--			local null_ls = require("null-ls")
	--
	--			null_ls.setup({
	--				sources = {
	--					--				require("none-ls.diagnostics.eslint_d"),
	--					null_ls.builtins.formatting.stylua,
	--					null_ls.builtins.completion.spell,
	--					null_ls.builtins.formatting.prettierd,
	--					null_ls.builtins.formatting.prettier,
	--					null_ls.builtins.completion.luasnip,
	--				},
	--			})
	--			vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
	--		end,
	--	},
  --	
	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
	local lint = require("lint")
	lint.linters_by_ft = {
		lua = { "luacheck" },
		javascript = { "eslint_d" },
		javascriptreact = { "eslint_d" },
		typescript = { "eslint_d" },
		typescriptreact = { "eslint_d" },
		html = { "htmlhint" },
	}

	--      local lint_augroup = vim.api.nvim_create_augroup("lint",{ clear = true })
	--
	--      vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost","InsertLeave"},{
	--        group = lint_augroup,
	--        callback = function()
	--        lint.try_lint()
	--        end,
	--      })
	--      vim.keymap.set("n","<leader>LL", function()
	--      lint.try_lint()
	--      end, {desc = "Trigger linting for current file"})

	vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
		end,
	},
	{
		"stevearc/conform.nvim",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
	local conform = require("conform")

	conform.setup({
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			markdown = { { "prettierd", "prettier" } },
			html = { "htmlbeautifier" },
			css = { { "prettierd", "prettier" } },
			scss = { { "prettierd", "prettier" } },
		},
	})

	vim.keymap.set({ "n", "v" }, "<leader>l", function()
		conform.format({
			lsp_fallback = true,
			async = false,
			timeout_ms = 500,
		})
	end, { desc = "Format file or range in visual mode" })
		end,
	},
}
