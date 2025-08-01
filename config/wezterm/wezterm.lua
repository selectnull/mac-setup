local wezterm = require "wezterm"
local panes = require "panes"

local keys = {
  -- split pane
  { key = "d", mods = "SUPER", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
  { key = "d", mods = "SUPER|SHIFT", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },

  -- activate pane
  { key = ".", mods = "SUPER", action = wezterm.action { ActivatePaneDirection = "Next" } },
  { key = ",", mods = "SUPER", action = wezterm.action { ActivatePaneDirection = "Prev" } },

  -- resize pane
  { key = "LeftArrow", mods = "SUPER|ALT", action = wezterm.action { AdjustPaneSize = { "Left", 1 } } },
  { key = "RightArrow", mods = "SUPER|ALT", action = wezterm.action { AdjustPaneSize = { "Right", 1 } } },
  { key = "UpArrow", mods = "SUPER|ALT", action = wezterm.action { AdjustPaneSize = { "Up", 1 } } },
  { key = "DownArrow", mods = "SUPER|ALT", action = wezterm.action { AdjustPaneSize = { "Down", 1 } } },

  -- clipboard
  { key = "c", mods = "SUPER", action = wezterm.action { CopyTo = "ClipboardAndPrimarySelection" } },
  { key = "v", mods = "SUPER", action = wezterm.action.PasteFrom "PrimarySelection" },

  { key = "l", mods = "CMD|CTRL", action = wezterm.action { ClearScrollback = "ScrollbackAndViewport" } },
  { key = "w", mods = "CMD|SHIFT", action = wezterm.action { CloseCurrentPane = { confirm = true } } },

  -- command palette
  { key = "p", mods = "SUPER", action = wezterm.action.ActivateCommandPalette },

  -- Unicode character selector
  { key = "u", mods = "SUPER", action = wezterm.action.CharSelect },

  -- Toggle Pane Zoom
  { key = "Enter", mods = "CMD", action = wezterm.action.TogglePaneZoomState },

  -- pane config
  {
    key = "1",
    mods = "CMD|ALT",
    action = wezterm.action_callback(function(win, pane)
      panes.split_for_dev(win, pane)
    end),
  },
}

-- move tab
for i = 1, 8 do
  -- CMD+CTRL+number to move current tab to <number> position
  table.insert(keys, {
    key = tostring(i),
    mods = "CMD|CTRL",
    action = wezterm.action.MoveTab(i - 1),
  })
end

return {
  font = wezterm.font "Roboto Mono",
  font_size = 15.0,

  initial_rows = 40,
  initial_cols = 120,

  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  use_resize_increments = false,

  color_scheme = "Dark+",

  audible_bell = "Disabled",

  keys = keys,

  -- inactive panes
  inactive_pane_hsb = {
    saturation = 0.4,
    brightness = 0.3,
  },

  -- number of scrollback lines to keep
  scrollback_lines = 10000,
}
