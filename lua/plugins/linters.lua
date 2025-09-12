return {
  --[[
  {
    "mfussenegger/nvim-lint",
    event  = {
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

      vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
    end,
  },
  ]]

  -- DIFFERENT CONFIGURATION TO CONFORM
  {
    'stevearc/conform.nvim',
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require 'conform'.format { async = true }
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    -- this will provide type hinting with LuaLS
    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        markdown = { "prettierd", "prettier" },
        html = { "htmlbeautifier" },
        css = { "prettierd", "prettier" },
        scss = { "prettierd", "prettier" },

      },
      default_format_opts = {
        lsp_format = "fallback",
      },
      -- set up format on save
      format_on_save = { timeout_ms = 500 },
      -- customize formatters
      formatters = {
        shfmt = {
          append_args = { "-i", "2" },
        },
      },
    },

    init = function()
      vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
  }

  --[[
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
  ]]
}
