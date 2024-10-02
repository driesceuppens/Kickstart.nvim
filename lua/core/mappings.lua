local keymap = vim.keymap
-- local cmd = vim.cmd
-- local api = vim.api
-- local uv = vim.loop

-- enter commandmode
keymap.set({"n", "x"}, ";", ":", {silent=true, desc="Enter commandmode"})

-- resize splits
keymap.set({"n", "x", "i"}, "<A-=>", "<c-w>+", {desc = "Resize split to the top"})
keymap.set({"n", "x", "i"}, "<A-->", "<c-w>-", {desc = "Resize split to the bottom"})
keymap.set({"n", "x", "i"}, "<A-.>", "<c-w>>", {desc = "Resize split to the right"})
keymap.set({"n", "x", "i"}, "<A-,>", "<c-w><", {desc = "Resize split to the left"})

-- make splits
keymap.set({"n", "x"}, "<leader>wv", "<c-w>v", {desc = "make a vertical split"})
keymap.set({"n", "x"}, "<leader>ws", "<c-w>s", {desc = "make a horizontal split"})

-- Swap the splits around
keymap.set({"n", "x"}, "<leader>wl", ":wincmd L<CR>", {desc = "Swap the current split to the right."})
keymap.set({"n", "x"}, "<leader>wk", ":wincmd K<CR>", {desc = "Swap the current split to the right."})
keymap.set({"n", "x"}, "<leader>wj", ":wincmd J<CR>", {desc = "Swap the current split to the right."})
keymap.set({"n", "x"}, "<leader>wh", ":wincmd H<CR>", {desc = "Swap the current split to the right."})

local opts = { noremap = false, silent = true }
keymap.set({"n", "x"}, "gc", ":Mutineer<CR>", opts)
keymap.set({"n", "x"}, "gcc", ":Mutineer<CR>", opts)

-- Exit insert mode easier
keymap.set("i", "jj", "<Esc>", opts)

