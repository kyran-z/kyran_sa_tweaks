-- function to get deep clone of passed table
function copyTable(datatable)
    local tblRes = {}
    if type(datatable) == "table" then
        for k, v in pairs(datatable) do
            tblRes[k] = copyTable(v)
        end
    else
        tblRes = datatable
    end
    return tblRes
end

local deeplm_item = copyTable(data.raw["item"]["land-mine"])
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

local deeplm_entity = copyTable(data.raw["land-mine"]["land-mine"])
deeplm_entity.name = "deep-land-mine"
deeplm_entity.minable.result = "deep-land-mine"
deeplm_entity.trigger_radius = 1
deeplm_entity.timeout = 10 * 60
deeplm_entity.picture_safe.tint = {0.2, 0.2, 0.2, 0.5}
deeplm_entity.picture_set.tint = {0.2, 0.2, 0.2, 0.5}

deeplm_entity.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-on-map"}
deeplm_entity.action.action_delivery.source_effects = {
    {
        type = "create-entity",
        entity_name = "explosion"
    }, {
        type = "create-entity",
        check_buildability = true,
        entity_name = "deep-mine-explosion-vulcanus"
    }, {
        type = "create-entity",
        check_buildability = true,
        entity_name = "deep-mine-explosion-nauvis"
    }
}

local deeplm_explosion_vulcanus = copyTable(data.raw["explosion"]["nuke-effects-vulcanus"])
deeplm_explosion_vulcanus.name = "deep-mine-explosion-vulcanus"
deeplm_explosion_vulcanus.created_effect.action_delivery.target_effects = {
    type = "set-tile",
    tile_name = "lava",
    radius = 1
}
local deeplm_explosion_nauvis = copyTable(data.raw["explosion"]["nuke-effects-vulcanus"])
deeplm_explosion_nauvis.name = "deep-mine-explosion-nauvis"
deeplm_explosion_nauvis.surface_conditions = {
    {
        property = "pressure",
        min = 1000,
        max = 2000
    }
}
deeplm_explosion_nauvis.created_effect.action_delivery.target_effects = {
    type = "set-tile",
    tile_name = "water-shallow",
    radius = 1
}

local deeplm_recipe = copyTable(data.raw["recipe"]["land-mine"])
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

data:extend({deeplm_item, deeplm_explosion_vulcanus, deeplm_explosion_nauvis, deeplm_entity, deeplm_recipe})
table.insert(data.raw["technology"]["land-mine"].effects, {
    type = "unlock-recipe",
    recipe = "deep-land-mine"
})
