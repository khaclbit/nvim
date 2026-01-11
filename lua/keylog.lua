local M = {}
M.keys = {}

-- Track last 3 keys
function M.log_key(key)
  table.insert(M.keys, key)
  if #M.keys > 3 then
    table.remove(M.keys, 1)
  end
end

-- Listen for keypresses
local ns = vim.api.nvim_create_namespace("keylog")
vim.on_key(function(char)
  if vim.fn.mode() == "n" then
    if #char == 1 and char:match("[a-zA-Z0-9]") then
      M.log_key(char)
    end
  end
end, ns)

-- Show macro recording status or last 3 keys
function M.status()
  local rec = vim.fn.reg_recording()
  if rec ~= "" then
    return "rec @" .. rec
  end
  if #M.keys == 0 then
    return ""
  end
  return table.concat(M.keys, "")
end

return M
