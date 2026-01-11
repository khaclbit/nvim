return {
  "wilfreddenton/history.nvim",
  requires = { { "nvim-lua/plenary.nvim" } },
  init = function()
    require("history").setup({
      keybinds = {
        back = "<C-A-b>",
        forward = "<C-A-f>",
        view = "<leader>bv",
      },
    })
  end,
  -- keys = {
  --   {
  --     "<leader>bf",
  --     function()
  --       require("history").select_file_in_history()
  --     end,
  --     desc = "Find History Buffer",
  --   },
  --   {
  --     "<C-b>",
  --     function()
  --       require("history").back()
  --     end,
  --     desc = "Back Buffer History",
  --   },
  --   {
  --     "<C-f>",
  --     function()
  --       require("history").back()
  --     end,
  --     desc = "Forward Buffer History",
  --   },
  -- },
  lazy = false,
}
