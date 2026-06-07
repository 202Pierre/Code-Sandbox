print("Choose a number to count down from:")
local start = io.read("*number")

if not start or start > 300 then
  print("That's too much. Pick a number under 301.")
  return
end

for i = start -1, 1, -1 do
  print(i)
  -- wait 1 second
  local target = os.time() + 1
  while os.time() < target do end
end

print("Blast Off!🚀")
-- Friday May 29 2026