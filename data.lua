require("prototypes.data")
require("prototypes.colors")
require("prototypes.entities")
require("prototypes.recipes")

function AddFluid(name)
  AddScienceFluidEntity(name)
  AddScienceToFluidRecipe(name)
  AddFluidToScienceRecipe(name)
end

data:extend({
  {
    type = "item-group",
    name = "science-fluid",
    icon = "__uncorked__/graphics/icons/science-fluid.png",
    order = "z-a", -- Where it appears in the tabs
  },
})
data:extend({
  {
    type = "item-subgroup",
    name = "science-fluid-row",
    group = "science-fluid",
    order = "a-b",
  },
})
data:extend({
  {
    type = "item-subgroup",
    name = "science-fluid-uncork",
    group = "intermediate-product", -- The inventory tab this row will appear in
    order = "g",                  -- Determines if this row is above/below other rows
  },
})

data:extend({
  {
    type = "item-subgroup",
    name = "science-fluid-cork",
    group = "intermediate-product", -- The inventory tab this row will appear in
    order = "g",                  -- Determines if this row is above/below other rows
  },
})

AddFluid("automation-science-pack")
AddFluid("logistic-science-pack")
AddFluid("military-science-pack")
AddFluid("chemical-science-pack")
AddFluid("production-science-pack")
AddFluid("utility-science-pack")
