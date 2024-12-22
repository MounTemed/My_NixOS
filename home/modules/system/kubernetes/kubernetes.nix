{ pkgs, ... }: {
  home.packages = with pkgs; [
    kompose
    kubectl
    kubernetes
    minikube
    terraform
  ];
}
