return {
  "luxluth/oz.nvim",
  lazy = true,
  ft = "oz",
  opts = {
    ozengine_path = "/Applications/Mozart2.app/Contents/Resources/bin/ozengine",
    keymaps = {
      feed_selection_mapping = "<leader>os",
    },
  },
  keys = {
    {
      "<leader>o",
      "MOzart",
    },
    {
      "<leader>of",
      "<cmd>OzFeedFile<CR>",
      desc = "Execute oz file",
    },
    {
      "<leader>ol",
      "<cmd>OzOpenLog<CR>",
      desc = "Open Oz logs",
    },
  },
}
