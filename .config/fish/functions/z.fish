function z
    zellij attach $(zellij ls -n | awk '{print $1}' | tail -r | fzf)
end
