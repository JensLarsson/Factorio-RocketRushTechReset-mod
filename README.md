This mod is a waste of time, just write 
```
/c for _, tech in pairs(game.player.force.technologies) do 
	tech.researched=false
	game.player.force.set_saved_technology_progress(tech, 0)
end
```
in your terminal.
