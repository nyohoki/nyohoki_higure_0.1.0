script.on_init(function()
    local omote = game.surfaces.nauvis
	local rgblight = settings.global["rgb-light"].value
	if settings.global["darkness"].value == true then
		omote.min_brightness = 0.1
		omote.daytime = 0.5
		omote.freeze_daytime = true
		omote.brightness_visual_weights = {r = rgblight, g = rgblight, b = rgblight}
	else
	return
	end
end)