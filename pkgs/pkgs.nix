{ pkgs, zen-browser, ... }: {
  home.packages = with pkgs; [
    clang
    fastfetch
    fira-code
    obs-studio
    photoqt
    rsclock
    unzip
    telegram-desktop
    pavucontrol
    nautilus
    adwaita-qt6
    flat-remix-icon-theme
    noto-fonts
    python3
    zed-editor
    kompose
    kubectl
    kubernetes
    minikube
    terraform
    btop
    gnome-keyring
    gnumake
    go
    grc
    grim
    hyprpicker
    keepassxc
    nil
    nodejs
    tdf
    zig
    vulkan-tools

  ];
  programs.git.enable = true;
}
