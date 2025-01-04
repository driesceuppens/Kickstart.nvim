return {
  'kaarmu/typst.vim',
  ft = 'typst',
  lazy = false,
  config = function()
    vim.cmd [[
      let g:typst_syntax_highlight = 0
      let g:typst_cmd = '~/.typst/typst'
      let g:typst_pdf_viewer = 'zathura'
      let g:typst_embedded_languages = [ 'py -> python', 'rust' ]
    ]]
  end,
}
