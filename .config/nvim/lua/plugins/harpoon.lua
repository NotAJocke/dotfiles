return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
  keys = {
    {
      "<leader>h",
      "Harpoon",
    },
    {
      "<leader>ha",
      function()
        local harpoon = require("harpoon")
        harpoon:list():append()
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
      "L",
      function()
        local harpoon = require("harpoon")
        harpoon:list():next()
      end,
    },
    {
      "H",
      function()
        local harpoon = require("harpoon")
        harpoon:list():prev()
      end,
    },
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({})

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    vim.keymap.set("n", "<leader>hl", function()
      toggle_telescope(harpoon:list())
    end, { desc = "List Harpoon" })
  end,
}
