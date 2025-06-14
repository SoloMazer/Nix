{ pkgs, ... }: {

  programs.chromium = {
    enable = true;
    package = pkgs.chromium.override { enableWideVine = true; };
    extensions = [
      "ddkjiahejlhfcafbddmgiahcphecmpfh" # Ublock Origin Lite
      "dacakhfljjhgdfdlgjpabkkjhbpcmiff" # Varia Integrator
      "mnjggcdmjocbbbhaepdhchncahnbgone" # SponsorBlock
      "ghmbeldphafepmbegfdlkpapadhbakde" # Proton Pass
      "jplgfhpmjnbigmhklmmbgecoobifkmpa" # Proton VPN
      "eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
    ];
    # commandLineArgs = [
    #   "--force-dark-mode"
    # ];
  };

  # Enable native wayland support
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
