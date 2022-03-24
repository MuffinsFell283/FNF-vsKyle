function onCreate()
	-- background shit
	
	makeLuaSprite('sky', 'future/cloudysky', -800, -550);
	setScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 1, 1);

	makeLuaSprite('building', 'future/building', -800, -750);
	setScrollFactor('building', 0.8, 0.8);
	scaleObject('building', 1, 1);

	makeLuaSprite('backrubble', 'future/backrubble', -800, -650);
	setScrollFactor('backrubble', 0.9, 0.9);
	scaleObject('backrubble', 1, 1);

	makeLuaSprite('ground', 'future/ground', -700, -750);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 1, 1);

	makeLuaSprite('frontrubble', 'future/frontrubble', -700, -800);
	setScrollFactor('frontrubble', 1.1, 1.1);
	scaleObject('frontrubble', 1, 1);
	
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

	
	
	addLuaSprite('sky', false);
	addLuaSprite('building', false);
	addLuaSprite('backrubble', false);
	addLuaSprite('ground', false);
	addLuaSprite('frontrubble', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end