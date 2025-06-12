{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    ghostty
  ];

  home.file = {
    ".config/ghostty/config".text = ''
      theme = nord
      font-family = Hurmit Nerd Font
      font-size = 12
      gtk-titlebar = false
      background-opacity = 0.95
      mouse-hide-while-typing = true
      window-theme = ghostty
      window-titlebar-background = 3b4252
      window-titlebar-foreground = d8dee9
      window-padding-balance = true
      window-padding-color = extend

      keybind = alt+r=new_split:right
      keybind = alt+d=new_split:down

      keybind = alt+h=goto_split:left
      keybind = alt+j=goto_split:down
      keybind = alt+k=goto_split:up
      keybind = alt+l=goto_split:right

      keybind = alt+shift+h=resize_split:left,10
      keybind = alt+shift+j=resize_split:down,10
      keybind = alt+shift+k=resize_split:up,10
      keybind = alt+shift+l=resize_split:right,10
      keybind = alt+shift+plus=equalize_splits

      keybind = alt+t=new_tab
      keybind = alt+q=text:"exit\n"
      keybind = super+q=quit

      keybind = alt+n=new_window
    '';

  };
}
