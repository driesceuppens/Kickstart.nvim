return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.vimtex_view_general_viewer = 'zathura --fork'
    vim.g.vimtex_compiler_method = 'latexmk'
    --    vim.g.vimtex_compiler_latexmk = true
    --    vim.cmd [[ let g:vimtex_compiler_generic = { 'command' : 'pdflatex *.tex', } ]]
    --
    --  vim.g.vimtex_compiler_
    --    vim.g.vimte_compiler_enables = true
    --    vim.g:vimtex_view_general_options = "--unique file:@pdf\#src:@line@tex"
  end,
}
