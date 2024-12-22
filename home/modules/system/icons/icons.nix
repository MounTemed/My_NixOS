{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    flat-remix-icon-theme
  ];
}
