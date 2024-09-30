return {
	"numToStr/Comment.nvim",
	-- https://github.com/numToStr/Comment.nvim
	-- gcc for line, gbc for blocks and add count at the beginning for specific amount of lines. ex. 5gbc 5 lines in block. More information on the github page

	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	config = function()
		local comment = require("Comment")

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- enable comment
		comment.setup({
			-- for commenting tsx jsx svelte html
			pre_hook = ts_context_commentstring.create_pre_hook(),
		})
	end,
}
