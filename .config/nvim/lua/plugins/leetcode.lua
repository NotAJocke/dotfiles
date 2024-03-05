local leet_arg = "leetcode"

return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    lazy = leet_arg ~= vim.fn.argv()[1],
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "golang",
      arg = leet_arg,
    },
  },
}
