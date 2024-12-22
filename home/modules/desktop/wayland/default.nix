{ inputs, pkgs, ... }: {
    imports = [
        ./hyprland
    ];

    home.packages = with pkgs; [
      # wallpaper
      swww
      waypaper

      # clipboard
      wl-clipboard

      # launcher
      wofi

      #hypr
      hyprpicker

      # xdg
      xdg-desktop-portal-hyprland
    ];

    home.sessionVariables = {
        QT_QPA_PLATFORM = "wayland";
        SDL_VIDEODRIVER = "wayland";
        XDG_SESSION_TYPE = "wayland";
    };
}
