-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", ctermbg = "NONE" })

require("neotest").setup({
  adapters = {
    require("neotest-vstest")({
      -- Path to dotnet sdk path.
      -- Used in cases where the sdk path cannot be auto discovered.
      sdk_path = "/usr/share/dotnet/sdk/9.0.112/",
      -- table is passed directly to DAP when debugging tests.
      dap_settings = {
        type = "netcoredbg",
      },
      -- If multiple solutions exists the adapter will ask you to choose one.
      -- If you have a different heuristic for choosing a solution you can provide a function here.
      solution_selector = function(solutions)
        return nil -- return the solution you want to use or nil to let the adapter choose.
      end,
      -- If multiple .runsettings/testconfig.json files are present in the test project directory
      -- you will be given the choice of file to use when setting up the adapter.
      -- Or you can provide a function here
      -- default nil to select from all files in project directory
      settings_selector = function(project_dir)
        return nil -- return the .runsettings/testconfig.json file you want to use or let the adapter choose
      end,
      build_opts = {
        -- Arguments that will be added to all `dotnet build` and `dotnet msbuild` commands
        additional_args = {},
      },
      timeout_ms = 30 * 5 * 1000, -- number of milliseconds to wait before timeout while communicating with adapter client
    }),
  },
})

-- first load extension
require("telescope").load_extension("rest")
