local M = {}

function M.split_for_dev(win, pane)
  local tab = win:mux_window():active_tab()
  if #tab:panes() > 1 then
    return
  end

  if pane.tab == nil then
    return
  end

  pane:split { direction = "Right", size = 0.55 }
end

return M
