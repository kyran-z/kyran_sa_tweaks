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

    }, {
        type = "recipe",
        name = "sulfur-crystallization",
        icons = {
            {
                icon = "__base__/graphics/icons/sulfur.png"
            }, {
                icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
                scale = 0.33,
                shift = {8, -8}
            }

        },
        categories = {"chemistry"},
        subgroup = "vulcanus-processes",
        energy_required = 1,
        ingredients = {
            {
                type = "fluid",
                name = "sulfuric-acid",
                amount = 100
            }
        },
        results = {
            {
                type = "item",
                name = "sulfur",
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

local carbon = data.raw["recipe"]["carbon"]
carbon.categories = {"smelting"}
carbon.auto_recycle = false
carbon.energy_required = 3.2
carbon.enabled = true
carbon.ingredients = {
    {
        type = "item",
        name = "wood",
        amount = 2
    }
}

local coal_synthesis = data.raw["recipe"]["coal-synthesis"]
coal_synthesis.results = {
    {
        type = "item",
        name = "coal",
        amount = 5
    }
}

local simple_coal_liquefaction = data.raw["recipe"]["simple-coal-liquefaction"]
simple_coal_liquefaction.ingredients = {
    {
        type = "item",
        name = "carbon",
        amount = 10
    }, {
        type = "item",
        name = "calcite",
        amount = 2
    }, {
        type = "fluid",
        name = "sulfuric-acid",
        amount = 25
    }
}

data.raw["technology"]["tungsten-carbide"].effects = {
    {
        type = "unlock-recipe",
        recipe = "coal-synthesis"
    }, {
        type = "unlock-recipe",
        recipe = "sulfur-crystallization"
    }, {
        type = "unlock-recipe",
        recipe = "tungsten-carbide"
    }
}

