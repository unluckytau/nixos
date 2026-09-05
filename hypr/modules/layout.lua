-- master tiling layout.
  hl.config({
    master = {
      new_status = "master",
    },
  })

-- keyboard input.
  hl.config({
    input = {
      kb_layout  = "us",
      kb_variant = "",
      kb_model   = "",
      kb_options = "",
      kb_rules   = "",
      follow_mouse = 1,
      sensitivity = 0,

      touchpad = {
        natural_scroll = false,
      },
    },
  })

-- per-device config.
  hl.device({
    name = "cust0001:00-06cb:cdad-touchpad", -- MSI GS66 touchpad
    sensitivity = 0.15,
  })
