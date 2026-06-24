function AddScienceFluidEntity(name)
	local fluid_color = SCIENCE_COLOR[name]
	data:extend({
		{
			type = "fluid",
			name = name .. "-fluid",
			default_temperature = 25,
			max_temperature = 100,
			heat_capacity = "0.0J",
			base_color = fluid_color, -- The color of the fluid in pipes/tanks
			flow_color = fluid_color, -- The color when it flows or sloshes
			icon = "__uncorked__/graphics/icons/" .. name .. "-fluid.png",
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "science-fluid-row",
			order = "a[science-fluid]-" .. data.raw["tool"][name].order,
			auto_barrel = false,
		},
	})
end
