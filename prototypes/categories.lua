local function add_recipe_category(recipe_name, category)
    local recipe = data.raw["recipe"][recipe_name]
    recipe.categories = recipe.categories or { "crafting" }
    table.insert(recipe.categories, category)
end

add_recipe_category("electric-engine-unit", "electromagnetics")
add_recipe_category("flying-robot-frame", "electromagnetics")
add_recipe_category("logistic-robot", "electromagnetics")
add_recipe_category("construction-robot", "electromagnetics")
add_recipe_category("roboport", "electromagnetics")

add_recipe_category("engine-unit", "metallurgy")
add_recipe_category("lithium-plate", "metallurgy")
add_recipe_category("coal-synthesis", "organic")

add_recipe_category("ice-melting", "cryogenics")
data.raw["recipe"]["quantum-processor"].categories = { "cryogenics" }
data.raw["recipe"]["electrolyte"].categories = { "chemistry" }
data.raw["recipe"]["holmium-plate"].categories = { "smelting", "metallurgy" }
data.raw["recipe"]["holmium-solution"].categories = { "organic" }

-- new stuff craftable in the gravity assembler
add_recipe_category("iron-chest", "crafting-in-space")
add_recipe_category("steel-chest", "crafting-in-space")
add_recipe_category("storage-tank", "crafting-in-space")
add_recipe_category("burner-inserter", "crafting-in-space")
add_recipe_category("inserter", "crafting-in-space")
add_recipe_category("long-handed-inserter", "crafting-in-space")
add_recipe_category("fast-inserter", "crafting-in-space")
add_recipe_category("bulk-inserter", "crafting-in-space")
add_recipe_category("pipe", "crafting-in-space")
add_recipe_category("pipe-to-ground", "crafting-in-space")
add_recipe_category("pump", "crafting-in-space")

add_recipe_category("repair-pack", "crafting-in-space")
add_recipe_category("nuclear-reactor", "crafting-in-space")
add_recipe_category("heat-pipe", "crafting-in-space")
add_recipe_category("heat-exchanger", "crafting-in-space")
add_recipe_category("steam-turbine", "crafting-in-space")
add_recipe_category("electric-mining-drill", "crafting-in-space")
add_recipe_category("offshore-pump", "crafting-in-space")
add_recipe_category("pumpjack", "crafting-in-space")
add_recipe_category("assembling-machine-1", "crafting-in-space")
add_recipe_category("assembling-machine-2", "crafting-in-space")
add_recipe_category("assembling-machine-3", "crafting-in-space")
add_recipe_category("oil-refinery", "crafting-in-space")
add_recipe_category("chemical-plant", "crafting-in-space")
add_recipe_category("centrifuge", "crafting-in-space")

add_recipe_category("space-platform-foundation", "crafting-in-space")
add_recipe_category("cargo-bay", "crafting-in-space")
add_recipe_category("asteroid-collector", "crafting-in-space")
add_recipe_category("crusher", "crafting-in-space")
add_recipe_category("thruster", "crafting-in-space")

add_recipe_category("firearm-magazine", "crafting-in-space")
add_recipe_category("piercing-rounds-magazine", "crafting-in-space")
add_recipe_category("uranium-rounds-magazine", "crafting-in-space")
add_recipe_category("rocket", "crafting-in-space")
add_recipe_category("explosive-rocket", "crafting-in-space")
add_recipe_category("atomic-bomb", "crafting-in-space")
add_recipe_category("railgun-ammo", "crafting-in-space")
