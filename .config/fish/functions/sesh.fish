function mux
    sesh connect $(sesh list | fzf)
end
