if not nyohoki
then nyohoki = {} 
end

if settings.global["darkness"].value == true
then darkness = true
elseif settings.global["darkness"].value == false
then darkness = false
end

function nyohoki.twilight()
    if darkness == true
    then twilight = true
    end
end

function nyohoki.higure()
    local omote = game.surfaces.nauvis
    omote.min_brightness = 0.1
    omote.daytime = 0.5
    omote.freeze_daytime = true
    local rgblight = settings.global["rgb-light"].value
    omote.brightness_visual_weights = {r = rgblight, g = rgblight, b = rgblight}
end

script.on_init
(function()
    local ri = remote.interfaces
    if ri["freeplay"]
    or ri["sandbox"]
    and twilight
    then script.on_event(defines.events.on_player_created, 
       function(event)
            nyohoki.higure()
        end)
    end
end)
