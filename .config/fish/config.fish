if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init --cmd cd fish | source
set -U fish_cursor_default block
set fish_cursor_default block
set fish_cursor_insert line
set fish_vi_force_cursor 1

set -gx HELIX_RUNTIME /Users/jocke/Developer/helix/runtime

# pnpm
set -gx PNPM_HOME /Users/jocke/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
