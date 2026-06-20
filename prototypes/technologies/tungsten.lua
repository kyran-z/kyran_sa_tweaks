data:extend({
    {
        type = "technology",
        name = "tungsten-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/tungsten-steel.png"),
        icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "tungsten-carbide",
                change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "tungsten-plate",
                change = 0.1
            }
        },
        prerequisites = {"metallurgic-science-pack"},
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                {"production-science-pack", 1}, {"metallurgic-science-pack", 1}
            },
            time = 60
        },
        max_level = "infinite",
        upgrade = true,
        essential = false
    }
})
