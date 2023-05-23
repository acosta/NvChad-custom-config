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

local keymap = vim.keymap

-- Moving lines using Ctrl+j (down) or Ctrl+k (up)
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

return M
