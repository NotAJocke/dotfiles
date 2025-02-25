local menu = hs.menubar.new()


if menu then
	menu:setTitle("HS")
	local submenu = menu:setMenu({
		{
			title = "Test battery",
			fn = function()
				local type = hs.battery.powerSource()
				if type == "AC Power" then
					hs.alert("Charging")
				else
					hs.alert("Not charging")
				end
			end,
		},
		{
			title = "Test user notification",
			fn = function()
				local img = hs.image.imageFromAppBundle("com.apple.Safari")
				local notif = hs.notify.new({
					title = "AC Charger unplugged",
					subTitle = "Default browser set to: Safari",
					contentImage = img,
					withdrawAfter = 0,
				})

				notif:send()
			end,
		},
	})
end
