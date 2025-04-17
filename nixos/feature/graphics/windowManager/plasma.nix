{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  graphics = config.host.feature.graphics;
in {
  config = mkIf (graphics.enable && graphics.windowManager.manager == "plasma") {
    services = {
      xserver = {
        desktopManager = {
          plasma6 = {
            enable = true;
          };
        };
      };
    };

    xdg.portal = {
      enable = true;
      xdgOpenUsePortal = true;
    };
  };
}
