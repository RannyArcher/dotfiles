if status is-interactive

  # replace double exclamative with last command
  _dblExclamations2lastcmd

  # change cursor on different vi modes
  set -g fish_cursor_insert line
  set -g fish_cursor_default block
  set -g fish_cursor_visual underscore

  # vi completion keybindings
  bind -M insert j 'commandline -P; and down-or-search; or commandline -i j'                
  bind -M insert k 'commandline -P; and up-or-search; or commandline -i k'                  
  bind -M insert h 'commandline -P; and commandline -f backward-char; or commandline -i h'
  bind -M insert l 'commandline -P; and commandline -f forward-char; or commandline -i l'

end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1;
        exec startx 2> /dev/null
    end
end
