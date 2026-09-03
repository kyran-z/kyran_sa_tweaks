data:extend({{
    type = "technology",
    name = "fruit-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/yumako.png"),
    icon_size = 256,
    effects = {{
        type = "change-recipe-productivity",
        recipe = "yumako-processing",
        change = 0.1
    }, {
        type = "change-recipe-productivity",
        recipe = "jellynut-processing",
        change = 0.1
    }},
    prerequisites = {"agricultural-science-pack"},
    unit = {
        count_formula = "1.5^L*1000",
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                       {"production-science-pack", 1}, {"agricultural-science-pack", 1}},
        time = 60
    },
    max_level = "infinite",
    upgrade = true,
    essential = false
}, {
    type = "technology",
    name = "holmium-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/holmium-processing.png"),
    icon_size = 256,
    effects = {{
        type = "change-recipe-productivity",
        recipe = "holmium-solution",
        change = 0.1
    }, {
        type = "change-recipe-productivity",
        recipe = "holmium-plate",
        change = 0.1
    }},
    prerequisites = {"electromagnetic-science-pack"},
    unit = {
        count_formula = "1.5^L*1000",
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                       {"production-science-pack", 1}, {"electromagnetic-science-pack", 1}},
        time = 60
    },
    max_level = "infinite",
    upgrade = true,
    essential = false
}, {
    type = "technology",
    name = "lithium-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/lithium-processing.png"),
    icon_size = 256,
    effects = {{
        type = "change-recipe-productivity",
        recipe = "lithium",
        change = 0.1
    }, {
        type = "change-recipe-productivity",
        recipe = "lithium-plate",
        change = 0.1
    }},
    prerequisites = {"cryogenic-science-pack"},
    unit = {
        count_formula = "1.5^L*1000",
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                       {"production-science-pack", 1}, {"cryogenic-science-pack", 1}},
        time = 60
    },
    max_level = "infinite",
    upgrade = true,
    essential = false
}, {
    type = "technology",
    name = "tungsten-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/tungsten-steel.png"),
    icon_size = 256,
    effects = {{
        type = "change-recipe-productivity",
        recipe = "tungsten-carbide",
        change = 0.1
    }, {
        type = "change-recipe-productivity",
        recipe = "tungsten-plate",
        change = 0.1
    }},
    prerequisites = {"metallurgic-science-pack"},
    unit = {
        count_formula = "1.5^L*1000",
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                       {"production-science-pack", 1}, {"metallurgic-science-pack", 1}},
        time = 60
    },
    max_level = "infinite",
    upgrade = true,
    essential = false
}})
