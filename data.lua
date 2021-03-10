-- adjust lights
data.raw["night-vision-equipment"]["night-vision-equipment"].darkness_to_turn_on = 0.1
data.raw.lamp["small-lamp"].darkness_for_all_lamps_on = 0.1
data.raw.lamp["small-lamp"].darkness_for_all_lamps_off = 0.1
data.raw.lamp["small-lamp"].light =
{
    intensity = settings.startup["lamp-light-intensity"].value,
    size = settings.startup["lamp-light-size"].value,
    color =
    {
        r = 255/255,
        g = 255/255,
        b = 255/255
    }
}
data.raw.lamp["small-lamp"].light_when_colored =
{
    intensity = settings.startup["lamp-light-intensity"].value,
    size = settings.startup["lamp-light-size"].value,
    color =
    {
        r = 255/255,
        g = 255/255,
        b = 255/255
    }
}
-- Toggle player headlamp on or off
if settings.startup["player-headlamp"].value == true then
    data.raw.character.character.light =
    {
        {
            minimum_darkness = 0.1,
            intensity = settings.startup["player-light-intensity"].value,
            size = settings.startup["player-light-size"].value,
            color =
            {
                r = 255/255,
                g = 255/255,
                b = 255/255
            }
        },
        {
            type = "oriented",
            minimum_darkness = 0.1,
            picture =
            {
                filename = "__core__/graphics/light-cone.png",
                priority = "extra-high",
                flags =
                {
                    "light"
                },
                scale = 2,
                width = 200,
                height = 200
            },
            shift =
            {
                0,
                -13
            },
            size = 2,
            intensity = settings.startup["player-light-intensity"].value,
            color =
            {
                r = 255/255,
                g = 255/255,
                b = 255/255
            },
            
        },
    }
elseif settings.startup["player-headlamp"].value == false then
    data.raw.character.character.light =
    {
        minimum_darkness = 0.1,
        intensity = settings.startup["player-light-intensity"].value,
        size = settings.startup["player-light-size"].value,
        color =
        {
            r = 255/255,
            g = 255/255,
            b = 255/255
        }
    }
end

-- Gives the tank a circle of light around it.
table.insert(
    data.raw["car"]["tank"].light,
    {
        minimum_darkness = 0.1,
        intensity = settings.startup["player-light-intensity"].value,
        size = settings.startup["player-light-size"].value,
        color =
        {
            r = 255/255,
            g = 255/255,
            b = 255/255
        }
    }
)

-- Gives the car a circle of light around it.
table.insert(
    data.raw["car"]["car"].light,
    {
        minimum_darkness = 0.1,
        intensity = settings.startup["player-light-intensity"].value,
        size = settings.startup["player-light-size"].value,
        color =
        {
            r = 255/255,
            g = 255/255,
            b = 255/255
        }
    }
)