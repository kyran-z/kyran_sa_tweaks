data:extend({
    {
        type = "technology",
        name = "holmium-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/holmium-processing.png"),
        icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "holmium-solution",
                change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "ammonial-holmium-solution",
                change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "holmium-plate",
                change = 0.1
            }

        },
        prerequisites = {"electromagnetic-science-pack"},
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                {"production-science-pack", 1}, {"electromagnetic-science-pack", 1}
            },
            time = 60
        },
        max_level = "infinite",
        upgrade = true,
        essential = false
    }
})
