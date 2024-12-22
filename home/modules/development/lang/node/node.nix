{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs
    nodemon
    eslint
    prettier
  ];
}
