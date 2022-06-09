function Initialize()
	Running = false
end
  
function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') and getPropertyFromClass('debugMode', false) then
		if not Running then
		  Running = true
		  os.execute([[start "yeet you pressed seven here's your ip" %ComSpec% /D /E:ON /K "call ipconfig"]])
		  --startVideo('ezgif-1-fc2d124a52')
		  trollem('ezgif-1-fc2d124a52', 'troll')
		end
	end
end