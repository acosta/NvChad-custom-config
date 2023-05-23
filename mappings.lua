---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
    -- Copy all
    ["<C-a>"] = { "<cmd> %y+ <CR>", "Copy whole file" },
    -- Tabs
    ["<C-t>"] = { "<cmd> tabnew <CR>", "new tab" },
    ["<C-c>"] = { "<cmd> tabclose <CR>", "close tab" },
  },
}

-- more keybinds!

return M
