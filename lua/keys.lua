--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
--map('i', 'jk', '', {})
-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle<CR>]], {}) --NVimTree
map('n', '<leader>l', [[:IndentLinesToggle<CR>]], {})
map('n', '<leader>t', [[:TagbarToggle<CR>]], {})
map('n', '<leader>ff', [[:Telescope find_files<CR>]], {})
map('n', '<leader>ff', [[:Telescope find_files<CR>]], {})
map('n', '<F7>', ':FloatermToggle<CR>', { noremap = true, silent = true })
map('t', '<F7>', [[<C-\><C-n>:FloatermToggle<CR>]], { noremap = true, silent = true })
-- Map leader(,) + / to toggle commenting
map('n', '<leader>/', ':Commentary<CR>', { noremap = true })
map('v', '<leader>/', ':Commentary<CR>', { noremap = true })


-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])
map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", {})
map('n', "Dw", ":call vimspector#AddWatch()<cr>", {})
map('n', "De", ":call vimspector#Evaluate()<cr>", {})

