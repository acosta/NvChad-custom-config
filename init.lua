-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local cmd = vim.cmd

-- Highlight whitespaces
cmd([[highlight WhitespaceEOL ctermbg=red ctermfg=white guibg=red guifg=white]])
cmd([[match WhitespaceEOL /\s\+$/]])

-- Trim whitespace onsave
cmd([[autocmd FileType c,cpp,java,php,html,javascript,css,python,sh,lua autocmd BufWritePre <buffer> %s/\s\+$//e]])

