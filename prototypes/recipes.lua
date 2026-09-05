local data_util = require("data-util")

data:extend({
    {
        type = "recipe", name = "sulfur-crystallization", icons = {
            { icon = "__base__/graphics/icons/sulfur.png" }, {
                icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
                scale = 0.33, shift = { 8, -8 }
            }
        }, categories = { "chemistry" }, subgroup = "vulcanus-processes",
        energy_required = 1,
        ingredients = { { type = "fluid", name = "sulfuric-acid", amount = 100 } },
        results = { { type = "item", name = "sulfur", amount = 1 } },
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
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
            { type = "fluid", name = "heavy-oil", amount = 50 },
            { type = "fluid", name = "light-oil", amount = 40 },
            { type = "fluid", name = "holmium-solution", amount = 10 }
        }, subgroup = "fulgora-processes", allow_productivity = true,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "holmium-ore", categories = { "chemistry" },
        subgroup = "fulgora-processes", energy_required = 1, ingredients = {
            { type = "fluid", name = "holmium-solution", amount = 100 },
            { type = "item", name = "stone", amount = 5 }
        }, results = { { type = "item", name = "holmium-ore", amount = 10 } },
        order = "b[holmium]-a[holmium-ore]", enabled = false,
        allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
        type = "recipe", name = "bio-oil", categories = { "organic" },
        subgroup = "agriculture-processes", energy_required = 5,
        ingredients = {
            { type = "item", name = "pentapod-egg", amount = 1 },
            { type = "item", name = "coal", amount = 1 },
            { type = "fluid", name = "water", amount = 50 }
        }, results = { { type = "fluid", name = "bio-oil", amount = 100 } },
        enabled = false, allow_productivity = true, allow_decomposition = false,
        auto_recycle = false, always_show_made_in = true
    }, {
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
        ingredients = { { type = "fluid", name = "bitumen", amount = 50 } },
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
        }, energy_required = 10, allow_decomposition = false,
        results = { { type = "item", name = "concrete", amount = 20 } },
        allow_productivity = true, auto_recycle = false,
        always_show_made_in = true
    }, {
        type = "recipe", name = "silicon",
        categories = { "smelting", "metallurgy" },
        subgroup = "aquilo-processes",
        ingredients = { { type = "item", name = "quartz", amount = 1 } },
        energy_required = 2, allow_decomposition = false,
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
        }, energy_required = 5, allow_decomposition = false,
        results = { { type = "item", name = "silicon-cell", amount = 2 } },
        order = "d[quartz]-c[silicon-cell]", allow_productivity = true,
        auto_recycle = true, always_show_made_in = true
    }
})
-- various modification
local cryogenic_plant = data.raw["recipe"]["cryogenic-plant"]
table.insert(cryogenic_plant.ingredients,
    { type = "item", name = "silicon-cell", amount = 20 })

local foundation = data.raw["recipe"]["foundation"]
foundation.ingredients = {
    { type = "item", name = "stone", amount = 20 },
    { type = "item", name = "tungsten-plate", amount = 4 },
    { type = "item", name = "carbon-fiber", amount = 4 },
    { type = "item", name = "silicon", amount = 4 }
}
foundation.results = { { type = "item", name = "foundation", amount = 4 } }
data.raw["recipe"]["concrete"].auto_recycle = false

local quantum_processor = data.raw["recipe"]["quantum-processor"]
table.insert(quantum_processor.ingredients,
    { type = "item", name = "silicon-cell", amount = 1 })

local solid_fuel_from_ammonia = data.raw["recipe"]["solid-fuel-from-ammonia"]
solid_fuel_from_ammonia.ingredients = {
    { type = "fluid", name = "ammonia", amount = 15 },
    { type = "fluid", name = "petroleum-gas", amount = 5 }
}

local bioplastic = data.raw["recipe"]["bioplastic"]
table.insert(bioplastic.ingredients,
    { type = "fluid", name = "bio-oil", amount = 5 })

local rocket_from_jelly = data.raw["recipe"]["rocket-fuel-from-jelly"]
rocket_from_jelly.ingredients = {
    { type = "fluid", name = "bio-oil", amount = 5 },
    { type = "item", name = "jelly", amount = 30 },
    { type = "item", name = "bioflux", amount = 2 }
}

local carbon_fiber = data.raw["recipe"]["carbon-fiber"]
table.insert(carbon_fiber.ingredients,
    { type = "fluid", name = "bio-oil", amount = 5 })

local holmium_plate = data.raw["recipe"]["holmium-plate"]
holmium_plate.ingredients = {
    { type = "item", name = "holmium-ore", amount = 1 }
}
data.raw["recipe"]["holmium-solution"].hidden = true

local carbon = data.raw["recipe"]["carbon"]
carbon.categories = { "smelting" }
carbon.auto_recycle = false
carbon.energy_required = 3.2
carbon.enabled = true
carbon.ingredients = { { type = "item", name = "wood", amount = 2 } }

local coal_synthesis = data.raw["recipe"]["coal-synthesis"]
coal_synthesis.results = { { type = "item", name = "coal", amount = 5 } }

local simple_coal_liquefaction = data.raw["recipe"]["simple-coal-liquefaction"]
simple_coal_liquefaction.ingredients = {
    { type = "item", name = "carbon", amount = 10 },
    { type = "item", name = "calcite", amount = 2 },
    { type = "fluid", name = "sulfuric-acid", amount = 25 }
}

data_util.remove_result("scrap-recycling", "solid-fuel")
data_util.remove_result("scrap-recycling", "holmium-ore")
data_util.remove_ingredient("quantum-processor", "processing-unit")
