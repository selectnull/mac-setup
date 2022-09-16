local wezterm = require 'wezterm';

local keys = {
  -- split pane
  {key="d", mods="SUPER", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  {key="d", mods="SUPER|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

  -- activate pane
  {key="j", mods="SUPER|ALT", action=wezterm.action{ActivatePaneDirection="Next"}},
  {key="k", mods="SUPER|ALT", action=wezterm.action{ActivatePaneDirection="Prev"}},

  -- resize pane
  {key="LeftArrow", mods="SUPER|ALT", action=wezterm.action{AdjustPaneSize={"Left", 1}}},
  {key="RightArrow", mods="SUPER|ALT", action=wezterm.action{AdjustPaneSize={"Right", 1}}},
  {key="UpArrow", mods="SUPER|ALT", action=wezterm.action{AdjustPaneSize={"Up", 1}}},
  {key="DownArrow", mods="SUPER|ALT", action=wezterm.action{AdjustPaneSize={"Down", 1}}},

  -- clipboard
  {key="c", mods="SUPER", action=wezterm.action{CopyTo="ClipboardAndPrimarySelection"}},
  {key="v", mods="SUPER", action="PastePrimarySelection"},

  {key="l", mods="CMD|CTRL", action=wezterm.action{ClearScrollback="ScrollbackAndViewport"}},
  {key="w", mods="CMD|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
}

return {
  font = wezterm.font("Roboto Mono"),
  font_size = 15.0,

  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  use_resize_increments = false,

  color_scheme = "Dark+",

  audible_bell = "Disabled",

  keys = keys,

  -- tab bar
  tab_bar_style = TAB_BAR_STYLE,

  -- inactive panes
  inactive_pane_hsb = {
    saturation = 0.4,
    brightness = 0.3,
  },
}
