{ ... }:

{
  plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      basedpyright.enable = true;
      nil_ls = {
        enable = true;
        settings = {
          nix.flake.autoArchive = false;
        };
      };
      marksman.enable = true;
    };

    onAttach = ''
      if client:supports_method("textDocument/completion") then
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
      end
    '';
  };
}
