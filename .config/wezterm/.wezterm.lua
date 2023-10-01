local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.wsl_domains = {
  { 
    name = "Ubuntu",
    distribution = "Ubuntu-22.04",
    username = "hayapo",
    default_cwd = "/home/hayapo",
    default_prog = { "/home/linuxbrew/.linuxbrew/bin/zsh" },
  },
}

config.default_domain = "Ubuntu"

-- Setting the colorscheme
config.color_scheme = 'Vs Code Dark+ (Gogh)'
-- config.color_scheme = "MaterialDesignColors"

-- Setting the environment
config.font = wezterm.font("UDEV Gothic 35NFLG", { weight="Regular" })
config.use_ime = true
config.font_size = 13.0
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = false
config.hyperlink_rules = {}
config.audible_bell = "Disabled"

-- Setting the window background image
local SAC_1 = "C:\\Users\\hayat\\Pictures\\wallpaper\\SAC_1.jpg"
local SAC_2 = "C:\\Users\\hayat\\Pictures\\wallpaper\\SAC_2.jpg"
local Laughingman = "C:\\Users\\hayat\\Pictures\\wallpaper\\Laughingman.jpg"

config.window_background_image = SAC_2
config.window_background_opacity = 1.0
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.2,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}

local act = wezterm.action
config.keys = {
  {
    -- Alt+Shift+Fでフルスクリーンをトグル
    key = "f",
    mods = "SHIFT|META",
    action = act.ToggleFullScreen,
  },
  {
    -- Alt+Shift+Tで新しいタブを作成
    key = 't',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      cwd = "/home/hayapo",
    },
  },
  {
    -- Alt+Shift+Dで垂直方向に新しいペインを作成
    key = "d",
    mods = "SHIFT|META",
    action = act.SplitHorizontal { 
      domain = 'CurrentPaneDomain', 
      cwd = "/home/hayapo",
    },
  },
  {
    -- paste from the clipboard
    key = 'v', 
    mods = 'CTRL', 
    action = act.PasteFrom 'Clipboard'
  },
}

return config