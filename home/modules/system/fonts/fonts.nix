{ pkgs, ... }: {
  home.packages = with pkgs; [
    fira-code
    noto-fonts
  ];
}
