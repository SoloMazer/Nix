{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "GruvboxDark";
      font-family = "Hurmit Nerd Font";
      font-size = 12;
      gtk-titlebar = false;
      background-opacity = 0.95;
      mouse-hide-while-typing = true;
      window-theme = "ghostty";
      window-titlebar-background = "282828";
      window-titlebar-foreground = "ebdbb2";
      window-padding-balance = true;
      window-padding-color = "extend";

      keybind = [
        "alt+r=new_split:right"
        "alt+d=new_split:down"

        "alt+h=goto_split:left"
        "alt+j=goto_split:down"
        "alt+k=goto_split:up"
        "alt+l=goto_split:right"

        "alt+shift+h=resize_split:left,10"
        "alt+shift+j=resize_split:down,10"
        "alt+shift+k=resize_split:up,10"
        "alt+shift+l=resize_split:right,10"
        "alt+shift+plus=equalize_splits"

        "alt+t=new_tab"
        "alt+q=text:\"exit\\n\""
        "super+q=quit"

        "alt+n=new_window"
      ];
    };
  };
}
