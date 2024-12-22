{ pkgs, ... }: {
  home.packages = with pkgs; [
    wineWowPackages.stable
    wine64
    wine
    wineWowPackages.waylandFull
  ];
}
