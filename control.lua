
script.on_init(function()
if remote.interfaces["freeplay"]
    then
        script.on_event(defines.events.on_player_created, function(event)
        local omote = game.surfaces.nauvis
        omote.freeze_daytime = true
        omote.daytime = 0.5
        omote.min_brightness = 0.1
        omote.brightness_visual_weights = { 255 / 255, 255 / 255, 255 / 255}
        end)
elseif remote.interfaces["sandbox"]
    then
        local omote = game.surfaces.nauvis
        omote.freeze_daytime = true
        omote.daytime = 0.5
        omote.min_brightness = 0.1
        omote.brightness_visual_weights = { 255 / 255, 255 / 255, 255 / 255}
end
end)