local function parse_furnace(furnace, scale)
    if furnace.animation then
		for _, layer in pairs(furnace.animation.layers) do
			if layer.filename then
				layer.scale = scale
				layer.hr_version.scale = scale / 2
				layer.shift = {layer.shift[1] * scale, layer.shift[2] * scale}
				layer.hr_version.shift = {layer.hr_version.shift[1] * scale, layer.hr_version.shift[2] * scale}
			end
		end
    end

    if furnace.working_visualisations then
        for _, working_visualisation in pairs(furnace.working_visualisations) do
            if working_visualisation.animation and working_visualisation.animation.filename then
                working_visualisation.animation.scale = scale
                working_visualisation.animation.hr_version.scale = scale / 2
				working_visualisation.animation.shift = {working_visualisation.animation.shift[1] * scale, working_visualisation.animation.shift[2] * scale}
				working_visualisation.animation.hr_version.shift = {working_visualisation.animation.hr_version.shift[1] * scale, working_visualisation.animation.hr_version.shift[2] * scale}
            end
        end
    end
	
    return furnace
end

local function make_furnace(args)
    local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])
    furnace.name = args.name
    furnace.icons = {{icon = furnace.icon, icon_size = furnace.icon_size, icon_mipmaps = furnace.icon_mipmaps}}
    furnace.minable.result = furnace.name
    furnace.max_health = args.max_health
	furnace = parse_furnace(furnace, args.scale)
    furnace.collision_box = args.collision_box
    furnace.selection_box = args.selection_box
    furnace.crafting_speed = args.crafting_speed
    furnace.energy_source.emissions_per_minute = args.emissions_per_minute
    furnace.energy_usage = args.energy_usage

    return furnace
end

data:extend(
    {
        make_furnace(
            {
                name = "compound-electric-furnace-mk1",
                max_health = 3150,
                collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
                selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
                scale = 3,
                emissions_per_minute = 9,
                energy_usage = "1680kW",
				crafting_speed = 18,
            }
        )
    }
)
data:extend(
    {
        make_furnace(
            {
                name = "compound-electric-furnace-mk2",
                max_health = 24300,
                collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
                selection_box = {{-13.5, -13.5}, {13.5, 13.5}},
                scale = 9,
                emissions_per_minute = 81,
                energy_usage = "15120kW",
				crafting_speed = 162,
            }
        )
    }
)
data:extend(
    {
        make_furnace(
            {
                name = "compound-electric-furnace-mk3",
                max_health = 218700,
                collision_box = {{-40.4, -40.4}, {40.4, 40.4}},
                selection_box = {{-40.5, -40.5}, {40.5, 40.5}},
                scale = 27,
                emissions_per_minute = 729,
                energy_usage = "136080kW",
				crafting_speed = 1458,
            }
        )
    }
)