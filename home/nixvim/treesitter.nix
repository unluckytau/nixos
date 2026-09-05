{ ... }:

{
  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = false;
      ensure_installed = [
        "c"
        "cpp"
        "rust"
        "python"
        "nix"
        "markdown"
      ];
      highlight.enable = true;
    };
  };
}
