-- Feeds fuel rods into a reactor, one at a time.
-- Halt program by holding crtl-T.
-- redstone signal summary
-- right (input): send a fuel rod
-- left (output): enable translocator
-- front (output): enable redstone engine 

while true do
	if redstone.getInput("right") then
		print("Fuel rod requested")
		print("Briefly enable translocator")
		redstone.setOutput("left", true)
		sleep(2)
		redstone.setOutput("left", false)
		sleep(1)
		 print("Briefly enable redstone engine") 
		redstone.setOutput("front", false) 
		sleep(10)
		redstone.setOutput("front", true)
		sleep(1)
	end
	sleep(10)
end
