math.randomseed(os.time())

local starters = {
  "You are",
  "Today you will be",
  "Remember that you are",
  "Never forget that you're", 
  "Acknowledge to yourself that I am", 
  "You are always", 
  "Know that you are", 
  "Be grateful that you are", 
}

local phrases = {
  "capable of amazing things.",
  "stronger than you know.",
  "worthy of love and respect.",
  "unique and irreplaceable.",
  "a light in someone's life.", 
  "blessed.", 
  "deserving of the best.", 
  "improving each day.", 
  "talented and amazing.", 
  "full of potential.",
  "powerful and intelligent"
}

local start = starters[math.random(1, #starters)]
local phrase = phrases[math.random(1, #phrases)]

print(start .. " " .. phrase)