local lastState = nil

local function toggleBrowser()
	local state = hs.battery.powerSource()

	if state == lastState then
		return
	end

	lastState = state

	if state == "AC Power" then
		hs.notify.new({
			withdrawAfter = 0,
			title = "Browser change",
			subTitle = "New default browser: Zen"
		}):send()
		hs.urlevent.setDefaultHandler("http", "app.zen-browser.zen")
	else
		hs.notify.new({
			withdrawAfter = 0,
			title = "Browser change",
			subTitle = "New default browser: Safari"
		}):send()
		hs.urlevent.setDefaultHandler("http", "com.apple.Safari")
	end
end

local watcher = hs.battery.watcher.new(toggleBrowser)
watcher:start()
