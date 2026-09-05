local data_util = require("data-util")

data:extend({
    {
        type = "technology", name = "fruit-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/yumako.png"), icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "yumako-processing", change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "jellynut-processing", change = 0.1
            }
        }, prerequisites = { "agricultural-science-pack" }, unit = {
            count_formula = "1.5^L*1000", ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "agricultural-science-pack", 1 }
            }, time = 60
        }, max_level = "infinite", upgrade = true, essential = false
    }, {
        type = "technology", name = "holmium-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/holmium-processing.png"),
        icon_size = 256, effects = {
            {
                type = "change-recipe-productivity",
                recipe = "holmium-solution", change = 0.1
            },
            {
                type = "change-recipe-productivity", recipe = "holmium-plate",
                change = 0.1
            }
        }, prerequisites = { "electromagnetic-science-pack" }, unit = {
            count_formula = "1.5^L*1000", ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "electromagnetic-science-pack", 1 }
            }, time = 60
        }, max_level = "infinite", upgrade = true, essential = false
    }, {
        type = "technology", name = "lithium-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/lithium-processing.png"),
        icon_size = 256, effects = {
            {
                type = "change-recipe-productivity", recipe = "lithium",
                change = 0.1
            },
            {
                type = "change-recipe-productivity", recipe = "lithium-plate",
                change = 0.1
            }
        }, prerequisites = { "cryogenic-science-pack" }, unit = {
            count_formula = "1.5^L*1000", ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "cryogenic-science-pack", 1 }
            }, time = 60
        }, max_level = "infinite", upgrade = true, essential = false
    }, {
        type = "technology", name = "tungsten-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/tungsten-steel.png"),
        icon_size = 256, effects = {
            {
                type = "change-recipe-productivity",
                recipe = "tungsten-carbide", change = 0.1
            },
            {
                type = "change-recipe-productivity", recipe = "tungsten-plate",
                change = 0.1
            }
        }, prerequisites = { "metallurgic-science-pack" }, unit = {
            count_formula = "1.5^L*1000", ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
                { "production-science-pack", 1 },
                { "metallurgic-science-pack", 1 }
            }, time = 60
        }, max_level = "infinite", upgrade = true, essential = false
    }, {
        type = "technology", name = "quartz-processing",
        icon = "__kyran_sa_tweaks__/graphics/technology/silicon-processing.png",
        icon_size = 256, effects = {
            { type = "unlock-recipe", recipe = "silicon" },
            { type = "unlock-recipe", recipe = "silicon-cell" }
        }, prerequisites = { "planet-discovery-aquilo" },
        research_trigger = { type = "mine-entity", entities = { "quartz" } }
    }
})

table.insert(data.raw["technology"]["cryogenic-plant"].prerequisites,
    "quartz-processing")

-- insert recipes in technologies
data_util.add_recipe_unlock("planet-discovery-fulgora", "oil-sludge-separation")
data_util.add_recipe_unlock("planet-discovery-fulgora", "holmium-ore")
data_util.add_recipe_unlock("tungsten-carbide", "coal-synthesis")
data_util.add_recipe_unlock("tungsten-carbide", "sulfur-crystallization")
data_util.add_recipe_unlock("bioflux-processing", "bio-oil")
data_util.add_recipe_unlock("planet-discovery-aquilo", "bitumen-separation")
data_util.add_recipe_unlock("planet-discovery-aquilo", "concrete-from-bitumen")
