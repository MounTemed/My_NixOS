{ pkgs, inputs, ... }: {
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

  programs.ags = {
     enable = true;

     configDir = ./home/service/ags;

     extraPackages = with pkgs; [
       inputs.ags.packages.${pkgs.system}.battery
       fzf
     ];
  };

  home.packages = [
    inputs.ags.packages.${pkgs.system}.io
    inputs.ags.packages.${pkgs.system}.notifd
  ];

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
