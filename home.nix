{ config, pkgs, inputs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "laimick";
  home.homeDirectory = "/home/laimick";

  imports = [
    ./pkgs
    #./system/
    ./home
    #./modules/
    inputs.ags.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;


 # nix = {
 #   settings = {
 #     download-buffer-size = 268435456; # 256MB
 #   };
 # };

  programs.ags = {
     enable = true;

     # symlink to ~/.config/ags
     configDir = ./home/service/ags;

     # additional packages to add to gjs's runtime
     extraPackages = with pkgs; [
       inputs.ags.packages.${pkgs.system}.battery
       fzf
     ];
  };

  home.packages = [
    inputs.ags.packages.${pkgs.system}.io
    inputs.ags.packages.${pkgs.system}.notifd
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
