{
  pkgs,
  inputs,
  ...
}: {
  programs.ghostty = {
    enable = true;
    package = inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default;
    settings = {
      theme = "GruvboxDark";
      font-family = "Hurmit Nerd Font";
      font-size = 12;
      gtk-titlebar = false;
      background-opacity = 0.9;
      mouse-hide-while-typing = true;
      window-theme = "ghostty";
      window-titlebar-background = "282828";
      window-titlebar-foreground = "ebdbb2";
      window-padding-balance = true;
      window-padding-color = "extend";

      keybind = [
        "alt+h=goto_split:left"
        "alt+j=goto_split:down"
        "alt+k=goto_split:up"
        "alt+l=goto_split:right"

        "alt+shift+h=new_split:left"
        "alt+shift+j=new_split:down"
        "alt+shift+k=new_split:up"
        "alt+shift+l=new_split:right"

        "alt+ctrl+h=resize_split:left,10"
        "alt+ctrl+j=resize_split:down,10"
        "alt+ctrl+k=resize_split:up,10"
        "alt+ctrl+l=resize_split:right,10"
        "alt+ctrl+e=equalize_splits"

        "alt+t=new_tab"
        "alt+q=text:\"exit\\n\""
        "alt+n=new_window"

        "super+q=quit"
      ];
    };
  };
}
