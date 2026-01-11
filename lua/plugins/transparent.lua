return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  -- table: default groups
  groups = {
    "Normal",
    "NormalNC",
    "Comment",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLine",
    "CursorLineNr",
    "StatusLine",
    "StatusLineNC",
    "EndOfBuffer",
  },
  -- table: additional groups that should be cleared
  extra_groups = {
    -- add any highlight groups from snacks.explorer
    "SnacksPicker",
    "SnacksPickerFile",
    "SnacksPickerBox",
    "SnacksPickerTree",
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal", -- NvimTree
  },
  -- table: groups you don't want to clear
  exclude_groups = {},
  -- function: code to be executed after highlight groups are cleared
  -- Also the user event "TransparentClear" will be triggered
  on_clear = function() end,
}
