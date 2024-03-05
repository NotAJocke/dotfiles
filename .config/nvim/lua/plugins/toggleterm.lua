return {
  "akinsho/toggleterm.nvim",
  config = true,
  keys = {
    {
      "<leader>t",
      function()
        require("toggleterm").toggle(nil, 60, nil, "vertical")
      end,
    },
    {
      "<esc>",
      function()
        require("toggleterm").toggle()
      end,
      mode = "t",
    },
  },
}
