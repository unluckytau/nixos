{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  # core.
  wget
  curl
  wl-clipboard
  zip
  unzip
  p7zip
  libarchive
  ffmpeg
  flatpak
  zathura
  htop
  fzf
  ripgrep
  fd
  killall
  brightnessctl

  # code.
  git
  python3
  rustup
  rust-analyzer
  typst

  # c/c++ tools.
  gcc
  cmake
  gdb

  # misc.
  bibata-cursors
  ];
}
