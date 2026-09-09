local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
    {
        type = "item", name = "quartz",
        icon = "__kyran_sa_tweaks__/graphics/items/quartz.png", pictures = {
            {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/quartz.png",
                scale = 0.5, mipmap_count = 4
            }, {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/quartz-1.png",
                scale = 0.5, mipmap_count = 4
            }, {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/quartz-2.png",
                scale = 0.5, mipmap_count = 4
            }
        }, subgroup = "aquilo-processes", order = "d[quartz]-a[quartz]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        default_import_location = "aquilo", stack_size = 50, weight = 5 * kg
    }, {
        type = "item", name = "silicon",
        icon = "__kyran_sa_tweaks__/graphics/items/silicon.png", pictures = {
            {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/silicon.png",
                scale = 0.5, mipmap_count = 4
            }, {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/silicon-1.png",
                scale = 0.5, mipmap_count = 4
            }, {
                size = 64,
                filename = "__kyran_sa_tweaks__/graphics/items/silicon-2.png",
                scale = 0.5, mipmap_count = 4
            }
        }, subgroup = "aquilo-processes", order = "d[quartz]-b[silicon]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        default_import_location = "aquilo", stack_size = 100, weight = 5 * kg
    }, {
        type = "item", name = "silicon-cell",
        icon = "__kyran_sa_tweaks__/graphics/items/silicon-cell.png",
        subgroup = "aquilo-processes", order = "d[quartz]-c[silicon-cell]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        default_import_location = "aquilo", stack_size = 100, weight = 5 * kg
    }, {
        type = "item", name = "holmium-bacteria",
        icon = "__kyran_sa_tweaks__/graphics/items/holmium-bacteria.png",
        subgroup = "fulgora-processes",
        order = "b[holmium]-g[holmium-bacteria]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 50, default_import_location = "fulgora", weight = 1 * kg,
        spoil_ticks = 1 * minute, spoil_result = "holmium-ore"
    }, {
        type = "item", name = "gravity-assembler",
        subgroup = "production-machine", order = "c[assembling-machine-4]",
        inventory_move_sound = item_sounds.metal_large_inventory_move,
        pick_sound = item_sounds.metal_large_inventory_pickup,
        drop_sound = item_sounds.metal_large_inventory_move,
        icon = "__kyran_sa_tweaks__/graphics/items/gravity-assembler.png",
        icon_size = 64, stack_size = 5, default_import_location = "aquilo",
        weight = 200, place_result = "gravity-assembler"
    }
})
