-- environment variables.
  hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
  hl.env("XDG_SESSION_TYPE", "wayland")
  hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- nvidia variables.
  hl.env("GBM_BACKEND", "nvidia-drm")
  hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
  hl.env("LIBVA_DRIVER_NAME", "nvidia")

-- bibata cursors.
  hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
  hl.env("XCURSOR_SIZE", "24")
  hl.env("HYPRCURSOR_THEME","Bibata-Modern-Ice")
  hl.env("HYPRCURSOR_SIZE", "24")

-- variables.
  local terminal    = "kitty"
  local fileManager = "dolphin"
  local menu        = "hyprlauncher"
  local mainMod = "SUPER"

-- imports.
  require("modules/default")
  require("modules/binds")
  require("modules/appearance")
  require("modules/layout")
