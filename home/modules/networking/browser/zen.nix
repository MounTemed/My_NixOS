{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [
    inputs.zen-browser.packages.${pkgs.system}.default
  ];
}
