if status is-interactive
  # vi completion keybindings
  bind -M insert j 'commandline -P; and down-or-search; or commandline -i j'
  bind -M insert k 'commandline -P; and up-or-search; or commandline -i k'
  bind -M insert h 'commandline -P; and commandline -f backward-char; or commandline -i h'
  bind -M insert l 'commandline -P; and commandline -f forward-char; or commandline -i l'

  # change cursor on different vi modes
  set -g fish_cursor_insert line
  set -g fish_cursor_default block
  set -g fish_cursor_visual underscore

  # replace double exclamative with last command
  _dblExclamations2lastcmd   
end
