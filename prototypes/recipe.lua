data:extend(
    {
        {
            type = "recipe",
            name = "compound-electric-furnace-mk1",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"electric-furnace", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12}
                },
                result = "compound-electric-furnace-mk1"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"electric-furnace", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24}
                },
                result = "compound-electric-furnace-mk1"
            }
        },
        {
            type = "recipe",
            name = "compound-electric-furnace-mk2",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-electric-furnace-mk1", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12},
                    {"advanced-circuit", 12}
                },
                result = "compound-electric-furnace-mk2"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-electric-furnace-mk1", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24},
                    {"processing-unit", 24}
                },
                result = "compound-electric-furnace-mk2"
            }
        },
        {
            type = "recipe",
            name = "compound-electric-furnace-mk3",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-electric-furnace-mk2", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12},
                    {"advanced-circuit", 12},
                    {"processing-unit", 12}
                },
                result = "compound-electric-furnace-mk3"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-electric-furnace-mk2", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24},
                    {"processing-unit", 24}
                },
                result = "compound-electric-furnace-mk3"
            }
        }
    }
)
