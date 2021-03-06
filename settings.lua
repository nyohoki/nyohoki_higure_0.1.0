data:extend(
    {
        {   -- toggle night
            type = "bool-setting",
            name = "darkness",
            order = "a",
            setting_type = "runtime-global",
            default_value = true
        },
        {   -- adjust amount of darkness during night
            type = "int-setting",
            name = "rgb-light",
            order = "c",
            setting_type = "runtime-global",
            default_value = 255,
            minimum_value = 0,
            maximum_value = 255,
        },
        {   -- lamp light size
            type = "int-setting",
            name = "lamp-light-size",
            order = "d",
            setting_type = "startup",
            default_value = 40,
            minimum_value = 1,
            maximum_value = 255,
        },
        {   -- lamp light intensity
            type = "string-setting",
            name = "lamp-light-intensity",
            order = "e",
            setting_type = "startup",
            default_value = 0.9,
            minimum_value = 0.1,
            maximum_value = 1.0,
            allowed_values = {"0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1.0"},
        },
        {   -- player light size
            type = "int-setting",
            name = "player-light-size",
            order = "e",
            setting_type = "startup",
            default_value = 25,
            minimum_value = 1,
            maximum_value = 255,
        },
        {   -- player light intensity
            type = "string-setting",
            name = "player-light-intensity",
            order = "g",
            setting_type = "startup",
            default_value = 0.4,
            minimum_value = 0.1,
            maximum_value = 1.0,
            allowed_values = {"0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1.0"},
        },
        {   -- player headlamp
            type = "bool-setting",
            name = "player-headlamp",
            order = "h",
            setting_type = "startup",
            default_value = true,
        }
    }
)