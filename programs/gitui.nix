{
  programs.gitui = {
    enable = true;
    theme =
      #ron
      ''
        (
          selected_tab: "#fabd2f",
          command_fg: "#ebdbb2",
          selection_bg: "#458588",
          selection_fg: "#ebdbb2",
          cmdbar_bg: "#3c3836",
          cmdbar_extra_lines_bg: "#3c3836",
          disabled_fg: "#928374",
          diff_line_add: "#b8bb26",
          diff_line_delete: "#fb4934",
          diff_file_added: "#a9b665",
          diff_file_removed: "#ea6962",
          diff_file_moved: "#d3869b",
          diff_file_modified: "#fabd2f",
          commit_hash: "#d3869b",
          commit_time: "#83a598",
          commit_author: "#b8bb26",
          danger_fg: "#cc241d",
          push_gauge_bg: "#458588",
          push_gauge_fg: "#282828",
          tag_fg: "#d3869b",
          branch_fg: "#fe8019",
        )
      '';
  };
}
