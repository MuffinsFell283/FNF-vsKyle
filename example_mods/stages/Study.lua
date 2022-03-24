function onCreate()
	-- background shit
	makeAnimatedLuaSprite('stageback', 'kylebefore/Study', -340, -20);
	addAnimationByPrefix('stageback', 'Normal', 'Study normal', 24, false);
	addAnimationByPrefix('stageback', 'Open', 'Study door open', 24, false);
	setScrollFactor('stageback', 1, 1);
	--scaleObject('stageback', 0.8, 0.8);
	
	--makeLuaSprite('stagefront', 'kyle/front', -650, 600);
	--setScrollFactor('stagefront', 1, 1);
	--scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		--setScrollFactor('stagelight_left', 0.9, 0.9);
		--scaleObject('stagelight_left', 1.1, 1.1);
		
		--makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		--setScrollFactor('stagelight_right', 0.9, 0.9);
		--scaleObject('stagelight_right', 1.1, 1.1);
		--setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		--makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		--setScrollFactor('stagecurtains', 1.3, 1.3);
		--scaleObject('stagecurtains', 0.9, 0.9);
	end

	--makeAnimatedLuaSprite('galaxiianimated','FGboppers',-550,200)
	--addAnimationByPrefix('galaxiianimated','dance','fganim',24,true)
	--objectPlayAnimation('galaxiianimated','dance',false)
	--setScrollFactor('galaxiianimated', 0.9, 0.9);
	
	addLuaSprite('stageback', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end