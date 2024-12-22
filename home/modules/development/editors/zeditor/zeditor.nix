{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    zed-editor
  ];
    programs.zed-editor = {
        enable = true;
        extensions = ["nix" "toml" "make"];
        userSettings = {
          assistant = {
            enabled = true;
            version = "2";
            default_open_ai_model = null;

            default_model = {
              provider = "google";
              # Reference the environment variable here
              model = "gemini-1.5-flash";
              # Additional options for the model (if any)
            };
          };

          node = {
              path = lib.getExe pkgs.nodejs;
              npm_path = lib.getExe' pkgs.nodejs "npm";
          };

            hour_format = "hour24";
            auto_update = false;
            terminal = {
                alternate_scroll = "off";
                blinking = "off";
                copy_on_select = false;
                dock = "bottom";
                detect_venv = {
                    on = {
                        directories = [".env" ".venv"];
                        activate_script = "default";
                    };
                };
                env = {
                    TERM = "kitty";
                };
                font_family = "fira-code";
                font_features = null;
                font_size = null;
                line_height = "comfortable";
                option_as_meta = false;
                button = false;
                shell = "system";
                toolbar = {
                    title = true;
                };
                working_directory = "current_project_directory";
            };

            lsp = {
                rust-analyzer = {
                    binary = {
                        path_lookup = true;
                    };
                };
                nix = {
                    binary = {
                        path_lookup = true;
                    };
                };
            };

            # languages = {
            #
            # };

            vim_mode = false;
            load_direnv = "shell_hook";
            base_keymap = "VSCode";
            theme = {
                mode = "dark";
                dark = "Nightcap (Blur)";
            };
            show_whitespaces = "all" ;
            ui_font_size = 15;
            buffer_font_size = 16;
        };
    };
}
