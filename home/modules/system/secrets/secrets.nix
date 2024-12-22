{ pkgs, ... }: {
  home.packages = with pkgs; [
    gnome-keyring
    keepassxc
    nil
  ];
}
