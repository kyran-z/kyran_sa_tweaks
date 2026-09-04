local util = require("data-util")

data:extend({{
    type = "recipe",
    name = "sulfur-crystallization",
    icons = {{
        icon = "__base__/graphics/icons/sulfur.png"
    }, {
        icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
        scale = 0.33,
        shift = {8, -8}
    }},
    categories = {"chemistry"},
    subgroup = "vulcanus-processes",
    energy_required = 1,
    ingredients = {{
        type = "fluid",
        name = "sulfuric-acid",
        amount = 100
    }},
    results = {{
        type = "item",
        name = "sulfur",
        amount = 1
    }},
    enabled = false,
    allow_productivity = true,
    allow_decomposition = false,
    auto_recycle = false
}, {
    type = "recipe",
    name = "oil-sludge-separation",
    categories = {"oil-processing"},
    icons = {{
        icon = "__kyran_sa_tweaks__/graphics/oil-sludge.png",
        scale = 0.35,
        shift = {0, -4.8}
    }, {
        icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        scale = 0.25,
        shift = {-9, 7}
    }, {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        scale = 0.25,
        shift = {9, 7}
    }, {
        icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
        scale = 0.25,
        shift = {0, 7}
    }},
    enabled = false,
    energy_required = 5,
    ingredients = {{
        type = "fluid",
        name = "oil-sludge",
        amount = 100,
        fluidbox_multiplier = 10
    }},
    results = {{
        type = "fluid",
        name = "heavy-oil",
        amount = 50
    }, {
        type = "fluid",
        name = "light-oil",
        amount = 40
    }, {
        type = "fluid",
        name = "holmium-solution",
        amount = 10
    }},
    subgroup = "fulgora-processes",
    allow_productivity = true,
    auto_recycle = false
}, {
    type = "recipe",
    name = "holmium-crystallization",
    categories = {"chemistry"},
    subgroup = "fulgora-processes",
    energy_required = 1,
    ingredients = {{
        type = "fluid",
        name = "holmium-solution",
        amount = 100
    }, {
        type = "item",
        name = "stone",
        amount = 5
    }},
    results = {{
        type = "item",
        name = "holmium-ore",
        amount = 10
    }},
    enabled = false,
    allow_productivity = true,
    allow_decomposition = false,
    auto_recycle = false
}, {
    type = "recipe",
    name = "bio-oil",
    categories = {"organic"},
    subgroup = "agriculture-processes",
    energy_required = 5,
    ingredients = {{
        type = "item",
        name = "pentapod-egg",
        amount = 1
    }, {
        type = "item",
        name = "coal",
        amount = 1
    }, {
        type = "fluid",
        name = "water",
        amount = 50
    }},
    results = {{
        type = "fluid",
        name = "bio-oil",
        amount = 100
    }},
    enabled = false,
    allow_productivity = true,
    allow_decomposition = false,
    auto_recycle = false
}})
-- insert recipes in technologies
util.add_recipe_unlock("recycling", "oil-sludge-separation")
util.add_recipe_unlock("recycling", "holmium-crystallization")
util.add_recipe_unlock("tungsten-carbide", "coal-synthesis")
util.add_recipe_unlock("tungsten-carbide", "sulfur-crystallization")
util.add_recipe_unlock("bioflux-processing", "bio-oil")

-- various modification
local bioplastic = data.raw["recipe"]["bioplastic"]
table.insert(bioplastic.ingredients, {
    type = "fluid",
    name = "bio-oil",
    amount = 5
})

local rocket_from_jelly = data.raw["recipe"]["rocket-fuel-from-jelly"]
rocket_from_jelly.ingredients = {{
    type = "fluid",
    name = "bio-oil",
    amount = 5
}, {
    type = "item",
    name = "jelly",
    amount = 30
}, {
    type = "item",
    name = "bioflux",
    amount = 2
}}

local carbon_fiber = data.raw["recipe"]["carbon-fiber"]
table.insert(carbon_fiber.ingredients, {
    type = "fluid",
    name = "bio-oil",
    amount = 5
})

local holmium_plate = data.raw["recipe"]["holmium-plate"]
holmium_plate.categories = {"smelting", "metallurgy"}
holmium_plate.ingredients = {{
    type = "item",
    name = "holmium-ore",
    amount = 1
}}
data.raw["recipe"]["holmium-solution"].hidden = true

local carbon = data.raw["recipe"]["carbon"]
carbon.categories = {"smelting"}
carbon.auto_recycle = false
carbon.energy_required = 3.2
carbon.enabled = true
carbon.ingredients = {{
    type = "item",
    name = "wood",
    amount = 2
}}

local coal_synthesis = data.raw["recipe"]["coal-synthesis"]
coal_synthesis.results = {{
    type = "item",
    name = "coal",
    amount = 5
}}

local simple_coal_liquefaction = data.raw["recipe"]["simple-coal-liquefaction"]
simple_coal_liquefaction.ingredients = {{
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
}}

function remove_result(recipe_name, result_name)
    local recipe = data.raw["recipe"][recipe_name]
    for i, result in ipairs(recipe.results) do
        if result.name == result_name then
            table.remove(recipe.results, i)
            return
        end
    end
end

remove_result("scrap-recycling", "solid-fuel")
remove_result("scrap-recycling", "holmium-ore")
