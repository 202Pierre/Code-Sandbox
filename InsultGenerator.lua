math.randomseed(os.time())

local adjectives = {"funky", "dirty", "whorish", "clumsy", "ugly", "goofy", "dumb", "retarded"}
local nouns = {"fucker", "cunt", "slime ball", "sleezbag", "moron", "shithead", "ass face", "jackass", "slut"}

local adj = adjectives[math.random(1, #adjectives)]
local noun = nouns[math.random(1, #nouns)]

print("Damn " .. adj .. " " .. noun .. "!")

-- Friday May 29 2026