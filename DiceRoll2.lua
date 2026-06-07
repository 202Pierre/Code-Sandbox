-- Whack Craps - Dice Roll Simulator
math.randomseed(os.time())

-- Player setup
print("Welcome to Whack Craps!")
print("What's your name?")
local playerName = io.read()
if playerName == "" then
    playerName = "Player"
end

-- Game variables
local wallet = 500
local bet = 100
local rolling = true

-- Display rules
print("\n=== RULES ===")
print("7 or 11 = WIN +100 points")
print("2, 3 or 12 = LOSE -100 points")
print("4, 5, 6, 8, 9, 10 = PUSH (no change)")
print("Type 'q' to quit")
print("Press ENTER to roll")
print("==============")
print("Good luck, " .. playerName .. "!\n")

-- Show initial wallet
print("💰 " .. playerName .. "'s Wallet: " .. wallet .. " points 💰\n")

-- Main game loop
while rolling do
    print("Press ENTER to roll (or 'q' to quit):")
    local input = io.read()
    
    -- Check for quit
    if input == "q" then
        print("\nThanks for playing, " .. playerName .. "!")
        print("You cashed out with " .. wallet .. " points!💵")
        break
    elseif input ~= "" then
        print("Just press ENTER to roll, or 'q' to quit")
        goto continue
    end
    
    -- Roll the dice
    local first = math.random(1, 6)
    local second = math.random(1, 6)
    local total = first + second
    
    print("\n🎲 You rolled: " .. first .. " + " .. second .. " = " .. total)
    
    -- Determine outcome
    if total == 7 or total == 11 then
        wallet = wallet + bet
        print("✨ WINNER! +" .. bet .. " points!")
    elseif total == 2 or total == 3 or total == 12 then
        wallet = wallet - bet
        print("💀 CRAPS! -" .. bet .. " points!")
    else
        print("📌 PUSH! No points changed.")
    end
    
    -- Check for game over
    if wallet <= 0 then
        print("\n💀 GAME OVER - You're Broke! 💀")
        print("Thanks for playing, " .. playerName .. ".")
        break
    end
    
    -- Show current wallet
    print("\n💰 " .. playerName .. "'s Wallet: " .. wallet .. " points 💰\n")
    
    ::continue::
    
end
-- May 29,2026 nwcse.reserve@gmail.com