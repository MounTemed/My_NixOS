{ pkgs, inputs, ... }: {
  imports = [
    ./wayland
    ./games
  ];

  # Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # AGS
  programs.ags = {
     enable = true;

     configDir = ./ags;

     extraPackages = with pkgs; [
       inputs.ags.packages.${pkgs.system}.battery
       fzf
     ];
  };

  home.packages = [
    inputs.ags.packages.${pkgs.system}.io
    inputs.ags.packages.${pkgs.system}.notifd
  ];

}
