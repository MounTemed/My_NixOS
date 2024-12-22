{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs
  ];

  home.npm.enable = true;
  home.npm.packages = with pkgs.nodejs.pkgs; [
    nodemon
    eslint
    prettier
  ];
}
