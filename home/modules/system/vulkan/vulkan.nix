{ pkgs, ... }: {
  home.packages = with pkgs; [
    vulkan-tools
  ];
}
