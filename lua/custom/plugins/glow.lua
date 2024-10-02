return {
    "ellisonleao/glow.nvim",
    name = "glow",
    config = function()
      require("glow").setup({
        style = "dark",
        glow_path = "/usr/bin",
        pager = true,
        width = 1,
        install_path = "/usr/bin",
        border = 'solid',
        height = 10
      })
    end
  }
