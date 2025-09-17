return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
      "folke/snacks.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      vim.keymap.set('n', '<leader>ft', ':Neotree reveal float toggle <cr>')
    end
}
	
