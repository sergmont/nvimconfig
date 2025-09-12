return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "html", "cssls" },

    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      --config comes from completions.lua. Config from typecraft youtube video
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('html')
      vim.lsp.enable('cssls')

      --[[ GLOBAL DEFAULTS FOR LSP
"grn" is mapped in Normal mode to vim.lsp.buf.rename()
"gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
"grr" is mapped in Normal mode to vim.lsp.buf.references()
"gri" is mapped in Normal mode to vim.lsp.buf.implementation()
"grt" is mapped in Normal mode to vim.lsp.buf.type_definition()
"gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()
"an" and "in" are mapped in Visual mode to outer and inner incremental selections, respectively, using vim.lsp.buf.selection_range()
--]]
      --[[
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      ]]
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
