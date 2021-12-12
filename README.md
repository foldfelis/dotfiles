# dotfiles

## Gnome dconf

### Backup dconf
```sh
dconf dump /org/gnome/desktop/wm/preferences/ > org_gnome_desktop_wm_preferences.bak
dconf dump /org/gnome/desktop/wm/keybindings/ > org_gnome_desktop_wm_keybindings.bak
dconf dump /org/gnome/mutter/keybindings/ > org_gnome_mutter_keybindings.bak
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > org_gnome_settings-daemon_plugins_media-keys.bak
dconf dump /org/gnome/shell/keybindings/ > org_gnome_shell_keybindings.bak
```

### Load backup
```sh
dconf load /org/gnome/desktop/wm/preferences/ < org_gnome_desktop_wm_preferences.bak
dconf load /org/gnome/desktop/wm/keybindings/ < org_gnome_desktop_wm_keybindings.bak
dconf load /org/gnome/mutter/keybindings/ < org_gnome_mutter_keybindings.bak
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < org_gnome_settings-daemon_plugins_media-keys.bak
dconf load /org/gnome/shell/keybindings/ < org_gnome_shell_keybindings.bak
```

## Rofi

Add the following command to `Settings > Keyboard shoercut > add`

```sh
rofi -show drun -theme slate -show-icons -icon-theme Papirus-Dark
```

## Swap keys

`ESC` and `CapsLock`

```sh
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"
```

## GDM auto-suspend

GDM uses a separate dconf database to control power management. To only disable auto-suspend on AC, run:

```sh
sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
```

## GDM 4K scale

```sh
sudo -u gdm dbus-launch gsettings set org.gnome.desktop.interface scaling-factor 2
```
