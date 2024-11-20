return {
  {
    "lazy/flit.nvim",
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
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
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
        ____         _____          _____    ____    ____       ______   
       |    |   ____|\    \     ___|\    \  |    |  |    |  ___|\     \  
       |    |  /     /\    \   /    /\    \ |    |  |    | |     \     \ 
       |    | /     /  \    \ |    |  |    ||    | /    // |     ,_____/|
 ____  |    ||     |    |    ||    |  |____||    |/ _ _//  |     \--'\_|/
|    | |    ||     |    |    ||    |   ____ |    |\    \'  |     /___/|  
|    | |    ||\     \  /    /||    |  |    ||    | \    \  |     \____|\ 
|\____\|____|| \_____\/____/ ||\ ___\/    /||____|  \____\ |____ '     /|
| |    |    | \ |    ||    | /| |   /____/ ||    |   |    ||    /_____/ |
 \|____|____|  \|____||____|/  \|___|    | /|____|   |____||____|     | /
    \(   )/       \(    )/       \( |____|/   \(       )/    \( |_____|/ 
     '   '         '    '         '   )/       '       '      '    )/    
                                      '                            '     
          ]],
        },
      },
    },
  },
}
