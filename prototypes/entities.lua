local data_util = require("data-util")
local sounds = require("__base__.prototypes.entity.sounds")

local gravity_assembler = data_util.copyTable(
    data.raw["assembling-machine"]["foundry"])
gravity_assembler.name = "gravity-assembler"
gravity_assembler.icon =
    "__kyran_sa_tweaks__/graphics/items/gravity-assembler.png"
gravity_assembler.minable = { mining_time = 0.2, result = "gravity-assembler" }
gravity_assembler.crafting_categories = { "crafting-in-space" }
gravity_assembler.crafting_speed = 2
gravity_assembler.fluid_boxes = nil
gravity_assembler.energy_usage = "2000kW"
gravity_assembler.open_sound = sounds.mech_small_open
gravity_assembler.close_sound = sounds.mech_small_close
gravity_assembler.fast_replaceable_group = "gravity-assembler"
gravity_assembler.surface_conditions = { { property = "gravity", max = 0 } }
gravity_assembler.allowed_effects = {
    "consumption", "speed", "pollution", "quality"
}
gravity_assembler.graphics_set = {
    animation = {
        layers = {
            {
                filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-shadow.png",
                priority = "high", width = 520, height = 500, frame_count = 1,
                line_length = 1, repeat_count = 100, animation_speed = 0.35,
                draw_as_shadow = true, scale = 0.5
            }, {
                priority = "high", width = 320, height = 320, frame_count = 100,
                lines_per_file = 8, animation_speed = 0.35, scale = 0.5,
                stripes = {
                    {
                        filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-animation-1.png",
                        width_in_frames = 8, height_in_frames = 8
                    }, {
                        filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-animation-2.png",
                        width_in_frames = 8, height_in_frames = 5
                    }
                }
            }
        }
    }, working_visualisations = {
        {
            fadeout = true, animation = {
                layers = {
                    {
                        priority = "high", width = 320, height = 320,
                        frame_count = 100, lines_per_file = 8,
                        animation_speed = 0.35, scale = 0.5, stripes = {
                            {
                                filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-animation-1.png",
                                width_in_frames = 8, height_in_frames = 8
                            }, {
                                filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-animation-2.png",
                                width_in_frames = 8, height_in_frames = 5
                            }
                        }
                    }, {
                        priority = "high", draw_as_glow = true,
                        blend_mode = "additive", width = 320, height = 320,
                        frame_count = 100, lines_per_file = 8,
                        animation_speed = 0.35, scale = 0.5, stripes = {
                            {
                                filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-emission-1.png",
                                width_in_frames = 8, height_in_frames = 8
                            }, {
                                filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler-emission-2.png",
                                width_in_frames = 8, height_in_frames = 5
                            }
                        }
                    }
                }
            }
        }
    }
}
gravity_assembler.working_sound = {
    sound = {
        filename = "__kyran_sa_tweaks__/graphics/entities/gravity-assembler/gravity-assembler.ogg",
        volume = 0.45
    }, apparent_volume = 0.3
}

data:extend({
    { type = "recipe-category", name = "crafting-in-space" }, gravity_assembler
})
