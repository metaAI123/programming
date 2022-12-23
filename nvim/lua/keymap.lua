local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

--map("n", "<q-q>", "<Esc>", opt)
--map("v", "<q-q>", "<Esc>", opt)
--map("i", "<q-q>", "<Esc>", opt)
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
