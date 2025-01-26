hs.hotkey.bind("alt", "return", function()
	hs.application.launchOrFocus("Ghostty")
end)

hs.hotkey.bind({ "control", "alt", "shift" }, "q", function()
	hs.application.get("AeroSpace"):kill()
	hs.alert.show("Stopped AeroSpace")
end)
