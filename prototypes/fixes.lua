-- returns hazard concrete to be recycled into concrete
data.raw.recipe["hazard-concrete"].recycle_to_ingredients_of = nil
data.raw.recipe["refined-hazard-concrete"].recycle_to_ingredients_of = nil

-- adds rocket turret scaling damage on stronger explosive tech
table.insert(data.raw.technology["stronger-explosives-7"].effects, {
    type = "turret-attack",
    turret_id = "rocket-turret",
    modifier = 0.1
})
