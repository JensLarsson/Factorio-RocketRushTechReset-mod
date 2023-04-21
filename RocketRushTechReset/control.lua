-- Function to reset all researches for a given force
local function reset_research(force)
    for _, tech in pairs(force.technologies) do
        tech.researched = false
    end
end

-- Event handler for when the game is initialized or loaded
script.on_init(function()
    reset_research(game.forces.player)
end)

-- Event handler for when a new force is created
script.on_event(defines.events.on_force_created, function(event)
    reset_research(event.force)
end)
