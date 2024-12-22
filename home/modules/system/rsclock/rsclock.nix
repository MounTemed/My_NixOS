{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    rsclock
  ];
}
