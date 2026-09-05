{ ... }:

{
  services.flatpak.enable = true;
  services.openssh.enable = true;
  services.udisks2.enable = true;
  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

	# audio.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
