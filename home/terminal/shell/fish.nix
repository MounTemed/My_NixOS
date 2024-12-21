{ pkgs, ... }: {

    programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
    plugins = [{
      name = "grc";
      src = pkgs.fishPlugins.grc.src;
    }];

    shellAliases = let flakePath = "~/nixos";
    in {
        rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
        hms  = "home-manager switch --flake ${flakePath}";
    };
  };

}