function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'lucas/street', -1500, -1000);
	setScrollFactor('stageback', 1, 1);
	--scaleObject('stageback', 0.8, 0.8);
	makeLuaSprite('stageroof', 'lucas/roof', -1500, -1000);
	setScrollFactor('stageback', 1, 1);
	
	makeLuaSprite('stagechair', 'lucas/chair', 1580, 500);
	setScrollFactor('stagechair', 1, 1);

	makeAnimatedLuaSprite('BackH','lucas/backhex', -800, -100);
	setScrollFactor('BackH', 1, 1);
	addAnimationByPrefix('BackH', 'Idle', 'backhex idle', 24, false);

	makeAnimatedLuaSprite('BackW','lucas/backwhitty', 1875, 373);
	setScrollFactor('BackW', 1, 1);
	addAnimationByPrefix('BackW', 'Idle', 'backwhitty idle', 24, false);

	makeAnimatedLuaSprite('BackC','lucas/backcarol', 1520, 320);
	setScrollFactor('BackC', 1, 1);
	addAnimationByPrefix('BackC', 'Idle', 'backcarol idle', 24, false);

	makeAnimatedLuaSprite('BackP','lucas/backpico', 1600, 700);
	scaleObject('BackP', 1.2, 1.2);
	setScrollFactor('BackP', 1, 1);
	addAnimationByPrefix('BackP', 'Idle', 'backpico idle', 24, false);

	makeAnimatedLuaSprite('BackG','lucas/backgarcy', -1050, 100);
	setScrollFactor('BackG', 1, 1);
	addAnimationByPrefix('BackG', 'Idle', 'backgarcy idle', 24, false);

	makeAnimatedLuaSprite('BackAn','lucas/backannie', -1150, 200);
	setScrollFactor('BackAn', 1, 1);
	addAnimationByPrefix('BackAn', 'Idle', 'backannie idle', 24, false);

	makeAnimatedLuaSprite('BackAg','lucas/backagoti', 1300, 200);
	setScrollFactor('BackAg', 1, 1);
	addAnimationByPrefix('BackAg', 'Idle', 'backagoti idle', 24, false);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	
	
	addLuaSprite('stageback', false);
	
	
	if songName == 'Friendly' then
		addLuaSprite('BackW',false);
		addLuaSprite('stageroof', false);
		addLuaSprite('stagechair', false);
		addLuaSprite('BackC',false);
		addLuaSprite('BackH',false);
	end

	if songName == 'Enjoy' then
		addLuaSprite('BackW',false);
		addLuaSprite('stageroof', false);
		addLuaSprite('stagechair', false);
		addLuaSprite('BackC',false);
		addLuaSprite('BackH',false);
		addLuaSprite('BackAn',false);
		addLuaSprite('BackP',false);
		
	end

	if songName == 'Lets play' then
		addLuaSprite('BackW',false);
		addLuaSprite('stageroof', false);
		addLuaSprite('stagechair', false);
		addLuaSprite('BackC',false);
		addLuaSprite('BackH',false);
		addLuaSprite('BackG',false);
		addLuaSprite('BackAn',false);
		addLuaSprite('BackAg',false);
		addLuaSprite('BackP',false);
	end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end