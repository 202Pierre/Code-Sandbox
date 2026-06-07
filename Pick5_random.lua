--[[
math.randomseed(os.time())

local min = 1
local max = 100

local a = math.random(min, max)
local b = math.random(min, max)
local c = math.random(min, max)
local d = math.random(min, max)
local e = math.random(min, max)

print(a,b,c,d,e)
]]



-- pseudo random
math.randomseed(os.time())

-- range of numbers
local min = 1
local max = 99

-- building the pool
local pool = {}
for i = min, max do
    pool[#pool + 1] = i
end

-- pick 5 without repeats
local picks = {}
for i = 1, 5 do
    local index = math.random (1, #pool) -- random spot in the pool
    picks[i] = pool[index] -- grab that number
    table.remove(pool, index) -- remove it from the pool
end

-- print results (flexible code)
for i = 1, #picks do
  print(picks[i])
end

--[[
-- original 'hard code' for print function:
print(picks[1], picks[2], picks[3], picks[4], picks[5])

-- alt display (combine into one string)
print(table.concat(picks, "  "))
]]

-- June 6 2026 nwcse.reserve@gmail.com