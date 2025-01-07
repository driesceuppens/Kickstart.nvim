return {
  'm4xshen/autoclose.nvim',
  as = 'autoclose',
  opts = {
    keys = {
      ['"'] = { escape = true, close = true, pair = '""', disable_filetypes = { 'markdown', 'text' } },
      ['{'] = { escape = true, close = true, pair = '{}' },
      ["'"] = { escape = true, close = true, pair = "''", disable_filetypes = { 'markdown', 'text' } },
      ['$'] = { escape = true, close = true, pair = '$$', disable_filetypes = { 'markdown', 'text', 'zsh', 'bash', 'sh' } }, -- ignore filetypes where I might want to type single dollar signs
    },
    options = {
      disable_filetypes = { 'text' },
      disable_when_touch = true,
    },
  },
}
