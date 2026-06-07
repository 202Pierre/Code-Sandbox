math.randomseed(os.time())

local secret = math.random(1, 100)
local guess
local attempts = 0

print("Guess a number between 1 and 100")

while guess ~= secret do
  guess = io.read("*number")     
  attempts = attempts + 1
  if guess < secret then
    print("Too low...   Try Higher!")
  elseif guess > secret then
    print("Too high...  Try Lower!")
  end
end

print("Whoop There It Is! It took you " .. attempts .. " tries. Try again?")
-- pierre  nwcse.reserve@gmail.com 