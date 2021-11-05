local function disconnect(event)
    local entity = event.created_entity or event.entity
    if entity.type == 'electric-pole' then
        entity.disconnect_neighbour()
    end
end

local e=defines.events
local add_events = {e.on_built_entity, e.on_robot_built_entity, e.script_raised_revive, e.script_raised_built}
script.on_event(add_events, disconnect)
