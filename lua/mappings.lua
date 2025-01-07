local keymap = vim.keymap
-- local cmd = vim.cmd
-- local api = vim.api
-- local uv = vim.loop

-- enter commandmode
-- keymap.set({ 'n', 'x' }, ';', ':', { silent = true, desc = 'Enter commandmode' })

-- resize splits
keymap.set({ 'n', 'x', 'i' }, '<A-=>', '<c-w>+', { desc = 'Resize split to the top' })
keymap.set({ 'n', 'x', 'i' }, '<A-->', '<c-w>-', { desc = 'Resize split to the bottom' })
keymap.set({ 'n', 'x', 'i' }, '<A-.>', '<c-w>>', { desc = 'Resize split to the right' })
keymap.set({ 'n', 'x', 'i' }, '<A-,>', '<c-w><', { desc = 'Resize split to the left' })

-- make splits
keymap.set({ 'n', 'x' }, '<leader>mv', '<c-w>v', { desc = 'make a vertical split' })
keymap.set({ 'n', 'x' }, '<leader>ms', '<c-w>s', { desc = 'make a horizontal split' })

-- Swap the splits around
keymap.set({ 'n', 'x' }, '<leader>ml', ':wincmd L<CR>', { desc = 'Swap the current split to the right.' })
keymap.set({ 'n', 'x' }, '<leader>mk', ':wincmd K<CR>', { desc = 'Swap the current split to the right.' })
keymap.set({ 'n', 'x' }, '<leader>mj', ':wincmd J<CR>', { desc = 'Swap the current split to the right.' })
keymap.set({ 'n', 'x' }, '<leader>mh', ':wincmd H<CR>', { desc = 'Swap the current split to the right.' })

-- Manage tabs
keymap.set({ 'n', 'x' }, '<C-t>', ':tabnew<CR>', { desc = 'Open a new tab' })
keymap.set({ 'n', 'x' }, '<Tab>', ':tabnext<CR>', { desc = 'Open a new tab' })
keymap.set({ 'n', 'x' }, '<S-Tab>', ':tabprev<CR>', { desc = 'Open a new tab' })

-- Auto complete snippet from insert mode
vim.keymap.set({ 'i' }, '<C-K>', function()
  require('luasnip').expand()
end, { silent = true })

-- Jump to next
vim.keymap.set({ 'i', 's' }, '<Tab>', function()
  require('luasnip').jump(1)
end, { silent = true })

-- Jump to previous
vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
  require('luasnip').jump(-1)
end, { silent = true })

-- Change snippet choice
vim.keymap.set({ 'i', 's' }, '<C-E>', function()
  if require('luasnip').choice_active() then
    require('luasnip').change_choice(1)
  end
end, { silent = true })
