return {
  {
    'jrihon/mutineer.lua',
    config = function()
      require('mutineer').setup {
        lineCommentSymbols = {
          asm = ';', -- Assembly
          c = '//', -- C
          cpp = '//', -- C++
          cs = '//', -- C#
          csh = '#', -- C-shell
          d = '//', -- D
          dart = '//', -- Dart
          go = '//', -- Golang
          hs = '--', -- Haskell
          java = '//', -- Java
          javascript = '//', -- JavaScript
          kotlin = '//', -- Kotlin
          lua = '--', -- Lua
          matlab = '%', -- Matlab
          perl = '#', -- Perl
          php = '//', -- PHP
          python = '#', -- Python
          ruby = '#', -- Ruby
          rust = '//', -- Rust
          sh = '#', -- Shell
          sql = '--', -- SQL
          swift = '//', -- Swift
          tex = '%', -- LaTeX
          typescript = '//', -- TypeScript
          vim = '"', -- Vim
          yml = '#', -- YAML
          zsh = '#', -- Z-shell
          conf = '#', -- Config files
          config = '#', -- Same
        },
      }
      vim.keymap.set('n', '<leader>cc', ':Mutineer<CR>', { desc = '[C]ode action [C]omment line or selection in or out.' })
      vim.cmd [[autocmd BufNewFile,BufRead *.conf set filetype='conf']]
    end,
  },
}
