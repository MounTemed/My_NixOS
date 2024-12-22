{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    go
    go.withPackages (p: [ p.gopls ])
  ];
}
