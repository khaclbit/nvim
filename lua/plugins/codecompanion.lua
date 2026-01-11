-- lazy.nvim
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  opts = {
    adapters = {
      opencode = function()
        return require("codecompanion.adapters.http").extend({
          name = "opencode",
          url = "http://localhost:3000/v1/chat/completions",
          headers = {
            ["Content-Type"] = "application/json",
            -- ["Authorization"] = "Bearer " .. os.getenv("OPENCODE_API_KEY"),
          },
          body = {
            model = "{{model}}",
            messages = "{{messages}}",
          },
        })
      end,
    },
    -- NOTE: The log_level is in `opts.opts`
    opts = {
      log_level = "DEBUG", -- or "TRACE"
    },
    strategies = {
      chat = {
        adapter = {
          name = "opencode",
          model = "claude-sonnet-4",
        },
      },
    },
  },
}
