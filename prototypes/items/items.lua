local item_sounds = require("__base__.prototypes.item_sounds")

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
    }
})
