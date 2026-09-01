script.on_event(defines.events.on_land_mine_armed, function(event)
    local entity = event.mine
    if entity.name == "deep-land-mine" then
        entity.die()
    end
end)
