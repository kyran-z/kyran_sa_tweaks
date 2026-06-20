data:extend({
    {
        type = "technology",
        name = "lithium-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/lithium-processing.png"),
        icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "lithium",
                change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "lithium-plate",
                change = 0.1
            }

        },
        prerequisites = {"cryogenic-science-pack"},
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                {"production-science-pack", 1}, {"cryogenic-science-pack", 1}
            },
            time = 60
        },
        max_level = "infinite",
        upgrade = true,
        essential = false
    }
})
