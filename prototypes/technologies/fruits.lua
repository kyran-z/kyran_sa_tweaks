data:extend({
    {
        type = "technology",
        name = "fruit-productivity",
        icons = util.technology_icon_constant_recipe_productivity(
            "__space-age__/graphics/technology/yumako.png"),
        icon_size = 256,
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "yumako-processing",
                change = 0.1
            }, {
                type = "change-recipe-productivity",
                recipe = "jellynut-processing",
                change = 0.1
            }

        },
        prerequisites = {"agricultural-science-pack"},
        unit = {
            count_formula = "1.5^L*1000",
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1},
                {"production-science-pack", 1}, {"agricultural-science-pack", 1}
            },
            time = 60
        },
        max_level = "infinite",
        upgrade = true,
        essential = false
    }
})
