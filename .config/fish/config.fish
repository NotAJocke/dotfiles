if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init --cmd cd fish | source
set -U fish_cursor_default block
set fish_cursor_default block
set fish_cursor_insert line
set fish_vi_force_cursor 1
