-- Roulette Wheel Script Fri May 29 2026

print("Place your bet (Red, Black, Green, or a number 0-36):")
local bet = io.read()

print("Spinning the wheel...")
local result = math.random(0, 36)

local color
if result == 0 then
  color = "Green"
elseif result % 2 == 0 then
  color = "Black"
else
  color = "Red"
end

print("The ball landed on " .. result .. " (" .. color .. ")")

-- Check win
if bet == color or bet == tostring(result) then
  print("You win!")
else
  print("You lose.")
end

-- My 2nd Script :) 




