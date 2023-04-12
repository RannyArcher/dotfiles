function fish_prompt
    set -l border_color brblack
    test $status != 0; and set border_color red

    function _nim_prompt_wrapper
        set border_color $argv[1]
        set -l field_name $argv[2]
        set -l field_value $argv[3]

        set_color normal
        set_color -o $border_color
        echo -n '─'
        set_color -o $border_color
        echo -n '['
        set_color normal
        test -n $field_name
        and echo -n $field_name:
        set_color -o $border_color
        echo -n $field_value
        set_color -o $border_color
        echo -n ']'
    end

    set_color $border_color
    echo -n '┬─'
    set_color -o $border_color
    echo -n '['

    if functions -q fish_is_root_user; and fish_is_root_user
        set_color -o $border_color
    else
        set_color -o yellow
    end

    echo -n $USER
    set_color -o green
    echo -n @

    set_color -o cyan
    echo -n (prompt_hostname)
    set_color -o $border_color
    echo -n ']─['
    set_color -o blue
    echo -n (prompt_pwd)
    set_color -o $border_color
    echo -n ']'

    set -g fish_cursor_insert line
    set -g fish_cursor_default block
    set -g fish_cursor_visual underscore

    # disable default vi mode indicator
    function fish_mode_prompt
    end

    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        set -l mode
        switch $fish_bind_mode
            case default
                set mode (set_color --bold brcyan)N
            case insert
                set mode (set_color --bold brmagenta)I
            case replace_one
                set mode (set_color --bold brgreen)R
            case replace
                set mode (set_color --bold brblue)R
            case visual
                set mode (set_color --bold bryellow)V
        end
        set mode $mode(set_color normal)
        _nim_prompt_wrapper $border_color '' $mode
    end

    set -l prompt_git (fish_git_prompt '%s')
    test -n "$prompt_git"
    and echo -n (set_color -o $border_color)"─["(set_color -o green)"$prompt_git"(set_color -o $border_color)"]"

    echo ''

    set_color normal
    set_color -o $border_color
    echo -n '╰─╼ '
    set_color normal
    
end
