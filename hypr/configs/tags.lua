
hl.window_rule({
    name  = "tag__multimedia_vide",
    match = {
        class = "^([Mm]pv|vlc)$",
    },
})

hl.window_rule({
    name  = "tag__settings",
    match = {
        class = "^(nm-applet|nm-connection-editor|blueman-manager|org.gnome.FileRoller)$",
    },
})

hl.window_rule({
    name  = "tag__settings",
    match = {
        class = "^(org.gnome.DiskUtility|wihotspot(-gui)?)$",
    },
})

hl.window_rule({
    name  = "tag__viewer",
    match = {
        class = "^(org.gnome.SystemMonitor)$",
    },
})

-- system monitor

hl.window_rule({
    name  = "tag__viewer",
    match = {
        class = "^(org.gnome.Evince)$",
    },
})

-- document viewer 

hl.window_rule({
    name  = "tag__viewer",
    match = {
        class = "^(eog|org.gnome.Loupe)$",
    },
})

