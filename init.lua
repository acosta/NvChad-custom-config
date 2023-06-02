-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local api = vim.api
local cmd = vim.cmd
local set = vim.opt

set.list = true
set.listchars = { tab = "»·", trail = "·", extends = "…" }

-- Highlight whitespaces
cmd [[highlight WhitespaceEOL ctermbg=red ctermfg=white guibg=red guifg=white]]
cmd [[match WhitespaceEOL /\s\+$/]]

-- Trim whitespace onsave
cmd [[autocmd FileType c,cpp,java,php,html,javascript,css,python,sh,lua autocmd BufWritePre <buffer> %s/\s\+$//e]]

-- Setup highlight on yank
local lua_highlight = api.nvim_create_augroup("lua_highlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  group = lua_highlight,
})

-- spell checker
set.spelllang = "en_us"
set.spell = true
