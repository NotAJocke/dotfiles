return {
  "wojciech-kulik/xcodebuild.nvim",
  lazy = true,
  ft = "swift",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("xcodebuild").setup({})
  end,
}
