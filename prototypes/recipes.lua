local data_util = require("data-util")

data:extend({
    --- VULCANUS
    {
        type = "recipe", name = "sulfur-crystallization", icons = {
            { icon = "__base__/graphics/icons/sulfur.png" }, {
                icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
                scale = 0.33, shift = { 8, -8 }
            }
        }, categories = { "chemistry", "cryogenics" },
        subgroup = "vulcanus-processes", energy_required = 1,
        ingredients = { { type = "fluid", name = "sulfuric-acid", amount = 100 } },
        results = { { type = "item", name = "sulfur", amount = 5 } },
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "stone-from-lava", icons = {
            { icon = "__base__/graphics/icons/stone.png" }, {
                icon = "__space-age__/graphics/icons/fluid/lava.png",
                scale = 0.33, shift = { 8, -8 }
            }
        }, categories = { "metallurgy" }, subgroup = "vulcanus-processes",
        energy_required = 16,
        ingredients = { { type = "fluid", name = "lava", amount = 500 } },
        results = { { type = "item", name = "stone", amount = 50 } },
        order = "a[melting]-a[lava-c]", enabled = false,
        allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "plastic-vulcanization", icons = {
            { icon = "__base__/graphics/icons/plastic-bar.png" },
            {
                icon = "__base__/graphics/icons/sulfur.png", scale = 0.33,
                shift = { 8, -8 }
            }
        }, categories = { "chemistry", "cryogenics" },
        subgroup = "vulcanus-processes", energy_required = 1, ingredients = {
            { type = "item", name = "sulfur", amount = 1 },
            { type = "item", name = "calcite", amount = 1 },
            { type = "fluid", name = "heavy-oil", amount = 20 }
        }, results = { { type = "item", name = "plastic-bar", amount = 4 } },
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, --- FULGORA
    {
        type = "recipe", name = "oil-sludge-separation",
        categories = { "oil-processing" }, icons = {
            {
                icon = "__kyran_sa_tweaks__/graphics/fluids/oil-sludge.png",
                scale = 0.35, shift = { 0, -4.8 }
            }, {
                icon = "__base__/graphics/icons/fluid/heavy-oil.png",
                scale = 0.25, shift = { -9, 7 }
            }, {
                icon = "__base__/graphics/icons/fluid/light-oil.png",
                scale = 0.25, shift = { 9, 7 }
            }, {
                icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
                scale = 0.25, shift = { 0, 7 }
            }
        }, enabled = false, energy_required = 5, ingredients = {
            {
                type = "fluid", name = "oil-sludge", amount = 100,
                fluidbox_multiplier = 10
            }
        }, results = {
            { type = "fluid", name = "heavy-oil", amount = 10 },
            { type = "fluid", name = "light-oil", amount = 75 },
            { type = "fluid", name = "holmium-solution", amount = 15 }
        }, subgroup = "fulgora-processes", allow_productivity = true,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "holmium-ore",
        categories = { "chemistry", "cryogenics" },
        subgroup = "fulgora-processes", energy_required = 1,
        ingredients = {
            { type = "fluid", name = "holmium-solution", amount = 10 }
        }, results = { { type = "item", name = "holmium-ore", amount = 1 } },
        order = "b[holmium]-a[holmium-ore]", enabled = false,
        allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "holmium-bacteria", categories = { "organic" },
        icon = "__kyran_sa_tweaks__/graphics/items/holmium-bacteria.png",
        subgroup = "fulgora-processes", energy_required = 1,
        ingredients = {
            { type = "fluid", name = "holmium-solution", amount = 30 }
        }, results = {
            {
                type = "item", name = "holmium-bacteria", amount = 1,
                independent_probability = 0.1
            }
        }, order = "b[holmium]-g[holmium-bacteria]", enabled = false,
        allow_productivity = false, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "holmium-bacteria-cultivation",
        icon = "__kyran_sa_tweaks__/graphics/items/holmium-bacteria-cultivation.png",
        categories = { "organic" }, subgroup = "fulgora-processes",
        energy_required = 4, ingredients = {
            { type = "item", name = "holmium-bacteria", amount = 1 },
            { type = "item", name = "bioflux", amount = 1 }
        }, results = {
            {
                type = "item", name = "holmium-bacteria", amount = 4,
                reset_freshness_on_craft = true
            }
        }, order = "b[holmium]-h[holmium-bacteria-cultivation]",
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, --- GLEBA
    {
        type = "recipe", name = "bio-oil", categories = { "organic" },
        subgroup = "agriculture-processes", energy_required = 5,
        ingredients = {
            { type = "item", name = "jelly", amount = 10 },
            { type = "item", name = "coal", amount = 5 },
            { type = "fluid", name = "steam", amount = 50 }
        }, results = { { type = "fluid", name = "bio-oil", amount = 100 } },
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, --- AQUILO
    {
        type = "recipe", name = "bitumen-separation",
        categories = { "chemistry", "cryogenics" },
        subgroup = "aquilo-processes", icons = {
            {
                icon = "__kyran_sa_tweaks__/graphics/fluids/bitumen.png",
                scale = 0.35, shift = { 0, -4.8 }
            }, {
                icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
                scale = 0.25, shift = { -9, 7 }
            },
            {
                icon = "__base__/graphics/icons/coal.png", scale = 0.25,
                shift = { 9, 7 }
            }
        }, energy_required = 5,
        ingredients = { { type = "fluid", name = "bitumen", amount = 100 } },
        results = {
            { type = "item", name = "coal", amount = 4 },
            { type = "fluid", name = "petroleum-gas", amount = 100 }
        }, enabled = false, allow_productivity = true,
        allow_decomposition = false, auto_recycle = false,
        always_show_made_in = true
    }, {
        type = "recipe", name = "concrete-from-bitumen",
        categories = { "crafting-with-fluid", "metallurgy" },
        subgroup = "aquilo-processes", icons = {
            { icon = "__base__/graphics/icons/concrete.png" }, {
                icon = "__kyran_sa_tweaks__/graphics/fluids/bitumen.png",
                scale = 0.33, shift = { 9, -7 }
            }
        }, ingredients = {
            { type = "fluid", name = "bitumen", amount = 100 },
            { type = "item", name = "silicon", amount = 1 }
        }, energy_required = 10, allow_decomposition = false, enabled = false,
        results = { { type = "item", name = "concrete", amount = 20 } },
        allow_productivity = true, auto_recycle = false,
        always_show_made_in = true
    }, {
        type = "recipe", name = "silicon",
        categories = { "smelting", "metallurgy" },
        subgroup = "aquilo-processes",
        ingredients = { { type = "item", name = "quartz", amount = 1 } },
        energy_required = 2, allow_decomposition = false, enabled = false,
        results = { { type = "item", name = "silicon", amount = 1 } },
        order = "d[quartz]-b[silicon]", allow_productivity = true,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "silicon-cell",
        categories = { "crafting-with-fluid", "electromagnetics" },
        subgroup = "aquilo-processes", ingredients = {
            { type = "item", name = "silicon", amount = 1 },
            { type = "item", name = "plastic-bar", amount = 1 },
            { type = "fluid", name = "sulfuric-acid", amount = 5 }
        }, energy_required = 5, allow_decomposition = false, enabled = false,
        results = { { type = "item", name = "silicon-cell", amount = 2 } },
        order = "d[quartz]-c[silicon-cell]", allow_productivity = true,
        auto_recycle = true, always_show_made_in = true
    }, -- GENERAL
    {
        type = "recipe", name = "gravity-assembler",
        categories = { "advanced-crafting", "crafting-in-space" },
        ingredients = {
            { type = "item", name = "assembling-machine-3", amount = 2 },
            { type = "item", name = "carbon-fiber", amount = 10 },
            { type = "item", name = "superconductor", amount = 10 },
            { type = "item", name = "tungsten-carbide", amount = 20 }
        }, energy_required = 20, enabled = false,
        results = { { type = "item", name = "gravity-assembler", amount = 1 } }
    }
})
-- various modification
data.raw["recipe"]["bioflux"].results = {
    {
        type = "item", name = "bioflux", amount = 4,
        reset_freshness_on_craft = true
    }
}

data.raw["recipe"]["nutrients-from-bioflux"].ingredients = {
    { type = "item", name = "bioflux", amount = 2 }
}
data.raw["recipe"]["nutrients-from-bioflux"].results = {
    {
        type = "item", name = "nutrients", amount = 50,
        reset_freshness_on_craft = true
    }
}

data_util.remove_ingredient("superconductor", "light-oil")
table.insert(data.raw["recipe"]["superconductor"].ingredients,
    { type = "fluid", name = "light-oil", amount = 25 })

data.raw["recipe"]["electrolyte"].ingredients = {
    { type = "fluid", name = "light-oil", amount = 10 },
    { type = "item", name = "holmium-ore", amount = 1 },
    { type = "item", name = "stone", amount = 1 }
}

data.raw["recipe"]["coal-liquefaction"].results = {
    { type = "fluid", name = "heavy-oil", amount = 100 },
    { type = "fluid", name = "light-oil", amount = 30 }
}

table.insert(data.raw["recipe"]["cryogenic-plant"].ingredients,
    { type = "item", name = "silicon-cell", amount = 20 })

data.raw["recipe"]["foundation"].ingredients = {
    { type = "item", name = "stone", amount = 20 },
    { type = "item", name = "tungsten-plate", amount = 4 },
    { type = "item", name = "carbon-fiber", amount = 4 },
    { type = "item", name = "silicon", amount = 4 }
}
data.raw["recipe"]["foundation"].results = {
    { type = "item", name = "foundation", amount = 4 }
}
data.raw["recipe"]["concrete"].auto_recycle = false

data_util.remove_ingredient("quantum-processor", "processing-unit")
table.insert(data.raw["recipe"]["quantum-processor"].ingredients,
    { type = "item", name = "silicon-cell", amount = 1 })

data.raw["recipe"]["solid-fuel-from-ammonia"].ingredients = {
    { type = "fluid", name = "ammonia", amount = 15 },
    { type = "fluid", name = "petroleum-gas", amount = 5 }
}

table.insert(data.raw["recipe"]["bioplastic"].ingredients,
    { type = "fluid", name = "bio-oil", amount = 5 })

data.raw["recipe"]["rocket-fuel-from-jelly"].ingredients = {
    { type = "fluid", name = "bio-oil", amount = 5 },
    { type = "item", name = "jelly", amount = 30 },
    { type = "item", name = "bioflux", amount = 2 }
}

table.insert(data.raw["recipe"]["carbon-fiber"].ingredients,
    { type = "fluid", name = "bio-oil", amount = 5 })

data.raw["recipe"]["holmium-plate"].ingredients = {
    { type = "item", name = "holmium-ore", amount = 1 }
}

data.raw["recipe"]["holmium-solution"].ingredients = {
    { type = "item", name = "holmium-bacteria", amount = 1 },
    { type = "fluid", name = "water", amount = 10 }
}
data.raw["recipe"]["holmium-solution"].results = {
    { type = "fluid", name = "holmium-solution", amount = 10 }
}
data.raw["recipe"]["holmium-solution"].energy_required = 1
data.raw["recipe"]["holmium-solution"].order = "b[holmium]-i[holmium-solution]"

data.raw["recipe"]["carbon"].auto_recycle = false
data.raw["recipe"]["carbon"].energy_required = 3.2
data.raw["recipe"]["carbon"].enabled = true
data.raw["recipe"]["carbon"].ingredients = {
    { type = "item", name = "wood", amount = 2 }
}

data.raw["recipe"]["coal-synthesis"].results = {
    { type = "item", name = "coal", amount = 5 }
}

data.raw["recipe"]["simple-coal-liquefaction"].ingredients = {
    { type = "item", name = "carbon", amount = 10 },
    { type = "item", name = "calcite", amount = 2 },
    { type = "fluid", name = "sulfuric-acid", amount = 25 }
}

data_util.remove_result("scrap-recycling", "solid-fuel")
data_util.remove_result("scrap-recycling", "holmium-ore")
data_util.remove_ingredient("artillery-shell", "calcite")

