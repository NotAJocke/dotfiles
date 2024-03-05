return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
  keys = function()
    local keys = {
      {
        "<leader>h",
        "Harpoon",
      },
      {
        "<leader>ha",
        function()
          local harpoon = require("harpoon")
          harpoon:list():add()
          vim.notify("Added to Harpoon", "info")
        end,
        desc = "Added to Harpoon",
      },
      {
        "<leader>hd",
        function()
          local harpoon = require("harpoon")
          harpoon:list():remove()
          vim.notify("Removed from Harpoon", "info")
        end,
        desc = "Delete from Harpoon",
      },
      {
        "<leader>hr",
        function()
          local harpoon = require("harpoon")
          harpoon:list():clear()
          vim.notify("Cleared Harpoon", "info")
        end,
        desc = "Clear Harpoon",
      },
      {
        "<leader>hl",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "List Harpoon",
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end

    return keys
  end,
}
