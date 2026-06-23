-- disable spoilage
data.raw.item["agricultural-science-pack"].spoil_ticks = 0
data.raw.item["agricultural-science-pack"].spoil_result = "agricultural-science-pack"

-- changes recipe
data.raw.recipe["agricultural-science-pack"].energy_required = 10
data.raw.recipe["agricultural-science-pack"].ingredients = {
    {
        type = "item",
        name = "bioflux",
        amount = 2
    }, {
        type = "item",
        name = "pentapod-egg",
        amount = 1
    }
}
