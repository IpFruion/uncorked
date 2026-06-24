require("prototypes.data")
require("prototypes.colors")
require("prototypes.groups")
require("prototypes.entities")
require("prototypes.recipes")

function AddFluid(name)
  AddScienceFluidEntity(name)
  AddScienceToFluidRecipe(name)
  AddFluidToScienceRecipe(name)
end

AddFluid("automation-science-pack")
AddFluid("logistic-science-pack")
AddFluid("military-science-pack")
AddFluid("chemical-science-pack")
AddFluid("production-science-pack")
AddFluid("utility-science-pack")
