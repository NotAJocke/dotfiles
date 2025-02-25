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
  -- {
  --   "mrcjkb/rustaceanvim",
  --   opts = {
  --     server = {
  --       default_settings = {
  --         ["rust-analyzer"] = {
  --           cargo = {
  --             targetDir = true,
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  {
    "ibhagwan/fzf-lua",
    opts = {
      oldfiles = {
        include_current_session = true,
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        zen = {
          width = 0,
        },
      },
    },
  },
}
