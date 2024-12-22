{ inputs, ... }: {
  home.username = "laimick";
  home.homeDirectory = "/home/laimick";

  imports = [
    ./modules
    inputs.ags.homeManagerModules.default
    inputs.hyprland.homeManagerModules.default
    inputs.zen-browser.homeManagerModules.default
    inputs.ayugram-desktop.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
