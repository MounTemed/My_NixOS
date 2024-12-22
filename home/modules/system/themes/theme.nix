{ pkgs, ... }: {
  home.packages = with pkgs; [
    adwaita-qt6
  ];
}
