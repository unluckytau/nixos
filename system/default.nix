{ pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
      ./wdblue.nix
      ./nvidia.nix
      ./locales.nix
      ./desktop.nix
      ./packages.nix
      ./services.nix
			./misc.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" "exfat" ];

  system.stateVersion = "26.05";

  users.users."tau" = {
    isNormalUser = true;
    description = "tau";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  fonts.packages = with pkgs; [
    maple-mono.NF
    crimson-pro
  ];

  networking.hostName = "tau";
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

  hardware.bluetooth.enable = true;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
