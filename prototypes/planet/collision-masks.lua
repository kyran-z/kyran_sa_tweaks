local tile_collision_masks = {}

tile_collision_masks.new_ammonia_ocean = function()
    return {
        layers = {
            water_tile = true,
            resource = true,
            item = true,
            player = true,
            doodad = true,
            floor = true
        }
    }
end

return tile_collision_masks
