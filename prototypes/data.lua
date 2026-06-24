-- Looking at some posts it looks like 1 unit of fluid is 470 ml
-- A standard size flask is 250 ml

FLASK_SIZE = 250      -- in milliliters
FLUID_UNIT_SIZE = 470 -- in milliliters

-- A good middle ground from rounding to 2 per 1 unit or going to 188 per 100 units is rounding in the middle
-- is just doing 18 science per 10 fluid

local function find_gcd(a, b)
  while b ~= 0 do
    a, b = b, a % b
  end
  return a
end

-- Another option is to use least common multiple of 11,750 meaning 47 per 25 units
local function find_lcm(a, b)
  if a == 0 or b == 0 then
    return 0
  end
  -- Use math.abs to handle negative inputs properly
  a, b = math.abs(a), math.abs(b)
  -- Divide before multiplying to maintain precision
  return math.floor(a / find_gcd(a, b)) * b
end

local lcm = find_lcm(FLASK_SIZE, FLUID_UNIT_SIZE)

SCIENCE_AMOUNT = lcm / FLASK_SIZE
FLUID_AMOUNT = lcm / FLUID_UNIT_SIZE
STONE_AMOUNT = math.floor(SCIENCE_AMOUNT / 2)
