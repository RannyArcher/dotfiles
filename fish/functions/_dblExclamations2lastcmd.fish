function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function _dblExclamations2lastcmd --on-variable fish_key_bindings
    bind --erase --all !
    switch "$fish_key_bindings"
    case 'fish_default_key_bindings'
        bind --mode default ! __history_previous_command
    case 'fish_vi_key_bindings' 'fish_hybrid_key_bindings'
        bind --mode insert ! __history_previous_command
    end
end
