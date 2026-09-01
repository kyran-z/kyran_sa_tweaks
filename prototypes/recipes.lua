data:extend({
    {
        type = "recipe",
        name = "casting-engine-unit",
        icons = {
            {
                icon = "__base__/graphics/icons/engine-unit.png"
            }, {
                icon = "__space-age__/graphics/icons/fluid/molten-iron.png",
                scale = 0.33,
                shift = {8, -8}
            }
        },
        categories = {"metallurgy"},
        subgroup = "vulcanus-processes",
        order = "b[casting]-f[casting-engine-unit]",
        energy_required = 10,
        ingredients = {
            {
                type = "fluid",
                name = "molten-iron",
                amount = 60
            }
        },
        results = {
            {
                type = "item",
                name = "engine-unit",
                amount = 1
            }
        },
        enabled = false,
        allow_productivity = true,
        allow_decomposition = false,
        auto_recycle = false

    }
})

table.insert(data.raw["technology"]["foundry"].effects, {
    type = "unlock-recipe",
    recipe = "casting-engine-unit"
})
