-- returns hazard concrete to be recycled into concrete
data.raw.recipe["hazard-concrete"].recycle_to_ingredients_of = nil
data.raw.recipe["refined-hazard-concrete"].recycle_to_ingredients_of = nil

-- changes recipe
data.raw.recipe["holmium-plate"].ingredients = {
    {
        type = "fluid",
        name = "holmium-solution",
        amount = 50,
        fluidbox_multiplier = 10
    }, {
        type = "item",
        name = "holmium-ore",
        amount = 1
    }
}

data.raw.recipe["holmium-plate"].results = {
    {
        type = "item",
        name = "holmium-plate",
        amount = 5
    }
}

-- adds rocket turret scaling damage on stronger explosive tech
table.insert(data.raw.technology["stronger-explosives-7"].effects, {
    type = "turret-attack",
    turret_id = "rocket-turret",
    modifier = 0.1
})
