return {
  "stevearc/oil.nvim",
  opts = {
    keymaps = {
      ["H"] = "actions.parent",
      ["L"] = "actions.select",
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
}
