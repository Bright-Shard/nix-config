{ lib, ... }:

let
  inherit (lib) options types;
  inherit (options) mkOption;
in
{
  options.hostOptions = {
    amdGpu = mkOption {
      description = "Whether or not to install AMD GPU drivers.";
      type = types.bool;
      default = true;
    };
    intranet = mkOption {
      description = "Whether or not to connect this host to the intranet.";
      type = types.bool;
      default = true;
    };
    pc = mkOption {
      description = "Whether this host is a PC or a server. When this option is enabled, additional PC apps (like Steam) will be installed.";
      type = types.bool;
    };
    laptop = mkOption {
      description = "If this host is a laptop. Enables laptop-specific configs like a battery widget.";
      type = types.bool;
    };
    syncthingId = mkOption {
      description = "This host's Syncthing ID.";
      type = types.nullOr types.str;
      default = null;
    };
    hyprlandSettings = mkOption {
      description = "Additional Hyprland settings for this host.";
      type = types.attrs;
      default = { };
    };
  };
}
