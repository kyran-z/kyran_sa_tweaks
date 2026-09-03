local util = require("data-util")

function create_new_explosion(name, tile, conditions, entity)
    local explosion = util.copyTable(data.raw["explosion"]["nuke-effects-vulcanus"])
    explosion.name = name
    explosion.surface_conditions = conditions
    explosion.created_effect.action_delivery.target_effects = {
        type = "set-tile",
        tile_name = tile,
        radius = 1
    }
    data:extend({explosion})
    table.insert(entity.dying_trigger_effect, {
        type = "create-entity",
        check_buildability = true,
        entity_name = name
    })
end

-- item
local deeplm_item = util.copyTable(data.raw["item"]["land-mine"])
deeplm_item.name = "deep-land-mine"
deeplm_item.place_result = "deep-land-mine"
deeplm_item.icons = {
    {
        icon = "__base__/graphics/icons/land-mine.png"
    }, {
        icon = "__base__/graphics/icons/explosives.png",
        scale = 0.33,
        shift = {8, -8}
    }
}
-- entity
local deeplm_entity = util.copyTable(data.raw["land-mine"]["land-mine"])
deeplm_entity.name = "deep-land-mine"
deeplm_entity.minable.result = "deep-land-mine"
deeplm_entity.trigger_radius = 1
deeplm_entity.timeout = 10 * 60
deeplm_entity.picture_safe.tint = {0.3, 0.3, 0.3, 0.5}
deeplm_entity.picture_set.tint = {0.3, 0.3, 0.3, 0.5}
deeplm_entity.surface_conditions = {
    {
        property = "gravity",
        min = 1
    }
}
deeplm_entity.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-on-map"}
deeplm_entity.action = nil
deeplm_entity.corpse = nil
deeplm_entity.dying_trigger_effect = {
    {
        type = "create-entity",
        entity_name = "explosion"
    }
}
-- explosions, diverse per planet
create_new_explosion("deep-mine-explosion-vulcanus", "lava", {
    {
        property = "pressure",
        min = 4000,
        max = 4000
    }
}, deeplm_entity)
create_new_explosion("deep-mine-explosion-nauvis", "water-shallow", {
    {
        property = "pressure",
        min = 1000,
        max = 2000
    }
}, deeplm_entity)
create_new_explosion("deep-mine-explosion-fulgora", "oil-ocean-shallow", {
    {
        property = "magnetic-field",
        min = 99,
        max = 99
    }
}, deeplm_entity)
create_new_explosion("deep-mine-explosion-aquilo", "ammoniacal-ocean", {
    {
        property = "pressure",
        max = 600,
        min = 600
    }
}, deeplm_entity)
-- recipe
local deeplm_recipe = util.copyTable(data.raw["recipe"]["land-mine"])
deeplm_recipe.name = "deep-land-mine"
deeplm_recipe.ingredients = {
    {
        type = "item",
        name = "explosives",
        amount = 10
    }, {
        type = "item",
        name = "steel-plate",
        amount = 2
    }
}
deeplm_recipe.results = {
    {
        type = "item",
        name = "deep-land-mine",
        amount = 1
    }
}

data:extend({deeplm_item, deeplm_entity, deeplm_recipe})
table.insert(data.raw["technology"]["land-mine"].effects, {
    type = "unlock-recipe",
    recipe = "deep-land-mine"
})
