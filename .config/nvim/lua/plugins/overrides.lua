return {
  {
    "lazy/flit.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
