{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    git
  ];

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "MounTemed";
        email = "hyprland@vk.com";
      };
      core = {
        editor = "zeditor";
        autocrlf = input;
      };
      init = {
        defaultBranch = "master";
      };
      push = {
        default = "simple";
      };
    };
  };
}