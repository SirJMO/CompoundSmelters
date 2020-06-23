local tech1 = {
    effects = {{recipe = "compound-electric-furnace-mk1", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/advanced-material-processing.png", tint = {0.25, 0.25, 0.25}, icon_size = 128}
    },
    name = "compound-smelting-1",
    order = "c-a-a",
	prerequisites = {
		"advanced-material-processing-2",
	},
    type = "technology",
    unit = {
        count = "500",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 60
    }
}

local tech2 = {
    effects = {{recipe = "compound-electric-furnace-mk2", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/advanced-material-processing.png", tint = {0.25, 0.25, 0.25}, icon_size = 128}
    },
    name = "compound-smelting-2",
    order = "c-a-a",
    prerequisites = {
        "advanced-electronics",
        "compound-smelting-1"
    },
    type = "technology",
    unit = {
        count = "1000",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 60
    }
}

local tech3 = {
    effects = {{recipe = "compound-electric-furnace-mk3", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/advanced-material-processing.png", tint = {0.25, 0.25, 0.25}, icon_size = 128}
    },
    name = "compound-smelting-3",
    order = "c-a-a",
    prerequisites = {
        "advanced-electronics-2",
        "compound-smelting-2"
    },
    type = "technology",
    unit = {
        count = "2500",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 60
    }
}

data:extend({tech1, tech2, tech3})
