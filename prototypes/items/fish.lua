local function generate_fish_plant_pictures(fish_plant_name, variations_count)
    pictures = {}
    for index = 1, variations_count do
        table.insert(pictures, {
            filename = "__kyran_sa_tweaks__/graphics/fish-plant-" .. index .. ".png",
            width = 256,
            height = 256,
            scale = 0.25
        })
    end
    return pictures
end

data:extend({
    {
        type = "plant",
        name = "fish-plant",
        icons = {
            {
                icon = "__base__/graphics/icons/fish-entity.png",
                icon_size = 64
            }, {
                icon = "__base__/graphics/icons/tree-04.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-8, -8}
            }
        },
        flags = {"placeable-neutral", "placeable-off-grid"},
        minable = {
            mining_time = 0.5,
            results = {
                {
                    type = "item",
                    name = "raw-fish",
                    amount = 20
                }
            }
        },
        growth_ticks = 5 * minute,
        max_health = 50,
        collision_box = {{-1, -1}, {0.9, 0.99}},
        selection_box = {{-1, -1}, {1, 1}},
        subgroup = "trees",
        order = "a[tree]-a[nauvis]-a[regular]-a[fish-plant]",
        impact_category = "tree",
        collision_mask = {
            layers = {
                ground_tile = true,
                train = true,
                is_object = true,
                is_lower_object = true
            }
        },
        autoplace = {
            probability_expression = false,
            order = "a[tree]-b[forest]-a",
            tile_restriction = {"water", "deepwater"}
        },
        pictures = generate_fish_plant_pictures("fish-plant", 4),
        agricultural_tower_tint = {
            primary = {
                r = 0.329,
                g = 0.780,
                b = 0.942,
                a = 1.000
            },
            secondary = {
                r = 0.000,
                g = 0.500,
                b = 0.600,
                a = 1.000
            }
        },
        ambient_sounds = {
            sound = {
                variations = sound_variations("__base__/sound/world/water/waterlap", 10, 0.5),
                advanced_volume_control = {
                    fades = {
                        fade_in = {
                            curve_type = "cosine",
                            from = {
                                control = 0.5,
                                volume_percentage = 0.0
                            },
                            to = {1.5, 100.0}
                        }
                    }
                }
            },
            radius = 7.5,
            min_entity_count = 2,
            max_entity_count = 10,
            entity_to_sound_ratio = 0.2,
            average_pause_seconds = 8
        },
        map_color = {0.700, 0.900, 1.000, 1.000}
    }
})

data.raw.capsule["raw-fish"].plant_result = "fish-plant"

