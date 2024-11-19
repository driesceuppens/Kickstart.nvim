return {
  'm4xshen/autoclose.nvim',
  as = 'autoclose',
  opts = {
    keys = {
      ['"'] = { escape = true, close = true, pair = '""', disable_filetypes = { 'markdown', 'text' } },
      ['{'] = { escape = true, close = true, pair = '{}' },
      ["'"] = { escape = true, close = true, pair = "''", disable_filetypes = { 'markdown', 'text' } },
    },
    options = {
      disable_filetypes = { 'text' },
      disable_when_touch = true,
    },
  },
  --    config = function()
  --      require("autoclose").setup({
  --        keys = {
  --          ['"'] = { escape = true, close = true, pair = '""' , disable_filetypes = { "markdown", "text" } },
  --          ["{"] = { escape = true, close = true, pair = "{}" },
  --          ["'"] = { escape = true, close = true, pair = "''", disable_filetypes = { "markdown", "text" } },
  --        },
  --        options = {
  --          disable_filetypes = { "text" },
  --          disable_when_touch = true,
  --        }
  --      })
  --    end
}
