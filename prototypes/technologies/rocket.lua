-- adds rocket turret scaling damage on stronger explosive tech
local rocket_bonuses = data.raw.technology["stronger-explosives-7"].effects

table.insert(rocket_bonuses, {
    type = "turret-attack",
    turret_id = "rocket-turret",
    modifier = 0.1
})
