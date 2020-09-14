# dotfiles

## Gnome dconf

### Backup dconf
```sh
dconf dump /org/gnome/desktop/wm/preferences/ > org_gnome_desktop_wm_preferences.bak
dconf dump /org/gnome/desktop/wm/keybindings/ > org_gnome_desktop_wm_keybindings.bak
dconf dump /org/gnome/mutter/keybindings/ > org_gnome_mutter_keybindings.bak
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > org_gnome_settings-daemon_plugins_media-keys.bak
```

### Load backup
```sh
dconf load /org/gnome/desktop/wm/preferences/ < org_gnome_desktop_wm_preferences.bak
dconf load /org/gnome/desktop/wm/keybindings/ < org_gnome_desktop_wm_keybindings.bak
dconf load /org/gnome/mutter/keybindings/ < org_gnome_mutter_keybindings.bak
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < org_gnome_settings-daemon_plugins_media-keys.bak
```

