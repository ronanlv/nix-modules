{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.host.feature.graphics.windowManager;
in
  with lib; {
    imports = [
      ./cage.nix
      ./plasma.nix
      ./gnome.nix
      ./hyprland.nix
      ./openbox.nix
    ];

    options = {
      host.feature.graphics.windowManager = {
        manager = mkOption {
          type = types.enum ["cage" "cinnamon" "gnome" "plasma" "hyprland" "openbox" null];
          default = null;
          description = "Window Manager to use";
        };
      };
    };
  }
