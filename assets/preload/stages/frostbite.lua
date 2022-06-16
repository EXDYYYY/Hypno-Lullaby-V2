function onCreate()
	-- background shit
	makeLuaSprite('bgref', 'bgref', -800, -200);
	setLuaSpriteScrollFactor('bgref', 1.0, 1.0);
	scaleObject('bgref', 0.5, 0.5);

	makeLuaSprite('fog', 'fog', 0, 0);
	setLuaSpriteScrollFactor('fog', 1.0, 1.0);
	setObjectCamera('fog', 'Hud')

	addLuaSprite('bgref', false);
   addLuaSprite('fog', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end