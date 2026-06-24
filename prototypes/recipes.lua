function AddScienceToFluidRecipe(name)
	data:extend({
		{
			type = "recipe",
			name = name .. "-uncork",
			category = "crafting-with-fluid", -- Critical: Standard 'crafting' will not work
			-- category = "cryogenics", -- If we want it later in the research tree
			subgroup = "science-fluid-uncork",
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{ type = "item", name = name, amount = SCIENCE_AMOUNT },
			},
			results = {
				{ type = "fluid", name = name .. "-fluid", amount = FLUID_AMOUNT },
				{ type = "item",  name = "stone",          amount = STONE_AMOUNT },
			},
			main_product = "",
			icon = "__uncorked__/graphics/icons/" .. name .. "-uncork.png",
			icon_size = 64,
			icon_mipmaps = 4,
			allow_productivity = false,
			allow_quality = false,
			order = "b[science-uncork]-" .. data.raw["tool"][name].order,
		},
	})
end

function AddFluidToScienceRecipe(name)
	data:extend({
		{
			type = "recipe",
			name = name .. "-cork",
			category = "crafting-with-fluid", -- Critical: Standard 'crafting' will not work
			-- category = "cryogenics", -- If we want it later in the research tree
			subgroup = "science-fluid-cork",
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{ type = "fluid", name = name .. "-fluid", amount = FLUID_AMOUNT },
				{ type = "item",  name = "stone",          amount = STONE_AMOUNT },
			},
			results = {
				{ type = "item", name = name, amount = SCIENCE_AMOUNT },
			},
			main_product = "",
			icon = "__uncorked__/graphics/icons/" .. name .. "-cork.png",
			icon_size = 64,
			icon_mipmaps = 4,
			allow_productivity = false,
			allow_quality = false,
			order = "c[science-uncork]-" .. data.raw["tool"][name].order,
		},
	})
end
