local theme = {
  fill = 'TabLineFill',
  head = { fg = '#8aadf4', bg = '#24273a', style = 'italic' },
  current_tab = { fg = '#1e2030', bg = '#8aadf4', style = 'italic' },
  tab = { fg = '#8aadf4', bg = '#24273a', style = 'italic' },
  win = { fg = '#1e2030', bg = '#8aadf4', style = 'italic' },
  tail = { fg = '#8aadf4', bg = '#24273a', style = 'italic' },
}

return {
  'nanozuki/tabby.nvim',
  event = 'VimEnter', -- if you want lazy load, see below
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    line = function(line)
      return {
        {
          { '  ', hl = theme.head },
          line.sep('|', theme.head, theme.fill), -- 
        },
        line.tabs().foreach(function(tab)
          local hl = tab.is_current() and theme.current_tab or theme.tab
          -- indicate if any of buffers in tab have unsaved changes
          local modified = false
          local win_ids = require('tabby.module.api').get_tab_wins(tab.id)
          for _, win_id in ipairs(win_ids) do
            if pcall(vim.api.nvim_win_get_buf, win_id) then
              local bufid = vim.api.nvim_win_get_buf(win_id)
              if pcall(vim.api.nvim_buf_get_option(bufid, 'modified')) then
                modified = true
                break
              end
            end
          end

          return {
            line.sep('', hl, theme.fill), -- 
            tab.is_current() and '' or '',
            tab.number(),
            tab.name(),
            modified and '',
            -- tab.close_btn(''), -- show a close button
            line.sep('', hl, theme.fill), -- 
            -- line.spacer(),
            hl = hl,
            margin = ' ',
          }
        end),
        line.spacer(),
        -- shows list of windows in tab
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
          return {
            line.sep('', theme.win, theme.fill),
            win.is_current() and '' or '',
            win.buf_name(),
            line.sep('', theme.win, theme.fill),
            hl = theme.win,
            margin = ' ',
          }
        end),
        {
          line.sep('|', theme.tail, theme.fill), -- 
          { '  ', hl = theme.tail },
        },
        hl = theme.fill,
      }
    end,
    option = {
      nerdfont = true,
    },
    -- option = {}, -- setup modules' option,
  },
}
