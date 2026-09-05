# <p align="center"> NixOS Flake. </p>

<br>
<p align="center">
    <img src="etc/preview.png" alt="Preview">
</p>

#### Installation.

1. Enter Nix-Shell environment.
```
nix-shell -p git neovim
```

2. Clone required repos.
```
git clone https://github.com/unluckytau/NixOS.git
git clone https://github.com/unluckytau/.wallpapers.git
```

3. Copy `hardware-configuration.nix` into `NixOS/system/`.
```
# Replace $USER with username
cp /etc/nixos/hardware-configuration.nix /home/$USER/NixOS/system/hardware-configuration.nix
```

4. Setup misc configs.
```
# Replace $USER with username
mkdir -p /home/$USER/.local/state/hypr
cp /home/$USER/NixOS/etc/display.lua /home/$USER/.local/state/hypr/
cp /home/$USER/NixOS/etc/misc.lua /home/$USER/.local/state/hypr/
```

> #### Additional Installation Notes.
> 
> - If on a different device, disable import for `./wdblue.nix` in `NixOS/system/default.nix`. Delete `./wdblue.nix` module afterwards.
> - If on a non-nvidia device, disable import for `./nvidia.nix` in `NixOS/system/default.nix`. Delete `./nvidia.nix` module afterwards.

5. Disable import for `./nixvim` in `NixOS/home/default.nix`.
7. Disable import for `./misc.nix` in `NixOS/system/default.nix`.
8. Rebuild system using `sudo nixos-rebuild switch --flake .#USERNAME`.
9. Re-enable imports after system is successfully installed.

#### Flatpaks.
```bash
# add flathub remote.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# flatpaks.
flatpak install flathub app.zen_browser.zen com.discordapp.Discord org.gimp.GIMP moe.launcher.an-anime-game-launcher -y
```
