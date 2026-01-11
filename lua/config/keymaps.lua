-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Normal mode" })
map("n", ";", ":", { desc = "Normal mode" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- -- RunCode
-- map("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
-- map("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
-- map("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
-- map("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
-- map("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
-- map("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
-- map("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("n", "<leader>bv", "<cmd> lua require('history').toggle_popup()<CR>", { desc = "Find History Buffer" })

-- REST
map("n", "<leader>rr", ":Rest run<CR>", { noremap = true, silent = false, desc = "REST: Run Request" })
map("n", "<leader>ro", ":Rest open<CR>", { noremap = true, silent = false, desc = "REST: Open Request" })
map(
  "n",
  "<leader>re",
  ":Telescope rest select_env<CR>",
  { noremap = true, silent = false, desc = "REST: Select Environment" }
)
map("n", "<leader>rl", ":Rest logs<CR>", { noremap = true, silent = false, desc = "REST: Show Logs" })
map("n", "<leader>rc", ":Rest cookies<CR>", { noremap = true, silent = false, desc = "REST: Show Cookies" })

-- Keyboard users
-- vim.keymap.set("n", "<C-t>", function()
--   require("menu").open("default")
-- end, {})

-- mouse users + nvimtree users!
vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec('"normal! \\<RightMouse>"')

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, {})
