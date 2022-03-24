function onCreate()
	-- background shit
	

	makeLuaSprite('stagesky', 'lei/sky', -50, 0);
	setScrollFactor('stagesky', 0.8, 0.8);
	
	makeLuaSprite('stageroad', 'lei/road', -50, 0);
	setScrollFactor('stageroad', 0.85, 0.85);

	makeLuaSprite('stageentrance', 'lei/parkentrance', -50, 0);
	setScrollFactor('stageentrance', 0.9, 0.9);

	makeLuaSprite('stagetree1', 'lei/tree', -400, -200);
	makeLuaSprite('stagetree2', 'lei/tree', 1300, -150);
	setScrollFactor('stagetree1', 0.9, 0.9);
	setScrollFactor('stagetree2', 0.9, 0.9);

	makeLuaSprite('stagefront', 'lei/parkground', 0, 0);
	
	makeLuaSprite('fountain', 'lei/water fountain', 0, 0);

	makeLuaSprite('flower1', 'lei/flower1', 0, 0);
	makeLuaSprite('flower2', 'lei/flower2', 0, 0);
	
	makeAnimatedLuaSprite('leaf', 'lei/aidleaf', defaultBoyfriendX-270, defaultBoyfriendY-100);
	addAnimationByPrefix('leaf', 'pre', 'aidleaf pre', 24, false);
	addAnimationByPrefix('leaf', 'attackpre1', 'aidleaf 1', 24, false);
	addAnimationByPrefix('leaf', 'attackpre2', 'aidleaf 2', 24, false);
	addAnimationByPrefix('leaf', 'attack', 'aidleaf 3', 24, false);
	setProperty('leaf.flipX', true);
	
	if songName == 'Happyness-plant' then
		makeLuaSprite('Attention', 'lei/attention', 150, 180);
		--scaleObject('Attention', 1.2, 1.2);
		setScrollFactor('Attention', 0, 0);
		setObjectCamera('Attention','camHUD');
		
	end

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end
	
	addLuaSprite('stagesky', false);
	addLuaSprite('stageroad', false);
	addLuaSprite('stageentrance', false);
	addLuaSprite('stagetree1', false);
	addLuaSprite('stagetree2', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('fountain', false);
	addLuaSprite('flower1', false);
	addLuaSprite('flower2', true);
	addLuaSprite('leaf', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end