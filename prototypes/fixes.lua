-- returns hazard concrete to be recycled into concrete
data.raw.recipe["hazard-concrete"].recycle_to_ingredients_of = nil
data.raw.recipe["refined-hazard-concrete"].recycle_to_ingredients_of = nil

-- adds rocket turret scaling damage on stronger explosive tech
table.insert(data.raw["technology"]["stronger-explosives-7"].effects, {
    type = "turret-attack", turret_id = "rocket-turret", modifier = 0.1
})

-- adds bio-oil as a possible fuel for flamethrowers
table.insert(data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters
                 .fluids, { type = "bio-oil", damage_modifier = 1.2 })

-- add wood as result from mining gleba trees
table.insert(data.raw["plant"]["yumako-tree"].minable.results,
    { type = "item", name = "wood", amount = 5 })
table.insert(data.raw["plant"]["jellystem"].minable.results,
    { type = "item", name = "wood", amount = 5 })
