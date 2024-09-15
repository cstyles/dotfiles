local wezterm = require 'wezterm';

return {
  color_scheme = 'Dracula',
  enable_scroll_bar = true,
  font = wezterm.font('Hack Nerd Font'),
  font_size = 14.0,
  quote_dropped_files = "Posix",

  keys = {
    { key='k', mods='CMD', action=wezterm.action{ClearScrollback='ScrollbackAndViewport'} },
    { key='LeftArrow', mods='CMD|SHIFT', action=wezterm.action{MoveTabRelative=-1} },
    { key='RightArrow', mods='CMD|SHIFT', action=wezterm.action{MoveTabRelative=1} },
    -- Alt-Shift-Tab -> iterm2 compatible ESC-CTRL-Y
    { key='Tab', mods='ALT|SHIFT', action=wezterm.action{SendString='\x1b\x19'} },
  },
}
