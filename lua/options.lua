-- previously core.globals
-- to set global settings
local o = vim.o
-- local wo = vim.wo
-- local bo = vim.bo
local set = vim.opt

o.cursorcolumn = true
o.cursorline = true
o.shiftwidth = 4
o.number = true
o.relativenumber = true

o.showtabline = 2

-- Enable spell checker: test teest
-- use [s ]s to navigate between mistakes, use z= to fix or :spell
-- check out: https://johncodes.com/posts/2023/02-25-nvim-spell/
o.spell = true
o.spelllang = 'en_gb'

set.expandtab = true
set.wrap = false
set.swapfile = false
