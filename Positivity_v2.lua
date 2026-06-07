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
  "worthy of love.",
  "deserving of respect.", 
  "irreplaceable.",
  "unique.", 
  "a light in someone's life.", 
  "blessed.", 
  "deserving of the best.", 
  "improving each day.", 
  "talented.", 
  "amazing.", 
  "full of potential.", 
  "serving a purpose.", 
  "loved.", 
  "going to do better and better.", 
  "priceless and worthwhile.", 
}

while true do
  local start = starters[math.random(1, #starters)]
  local phrase = phrases[math.random(1, #phrases)]
  print(start .. " " .. phrase)
  print("Press ENTER for another, or 'q' to quit")
  
  local input = io.read()
  if input == "q" then
    break
  end
end

print("Goodbye!")




