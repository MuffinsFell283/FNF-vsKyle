function onCreate()
	makeAnimatedLuaSprite('lightninganim', 'kyle/animations/ThunderAnimation', defaultBoyfriendX+20, defaultBoyfriendY-180);
	addAnimationByPrefix('lightninganim', 'Idle', 'ThunderAnimation Idle', 24, false);
	addAnimationByPrefix('lightninganim', 'attack', 'ThunderAnimation fall', 24, false);
	addLuaSprite('lightninganim',true);

	makeAnimatedLuaSprite('magicCircle', 'blent/MagicCircle', defaultOpponentX-200, defaultOpponentY+300);
	makeAnimatedLuaSprite('circleAura', 'blent/MagicAura', defaultOpponentX-200, defaultOpponentY+300);
	makeAnimatedLuaSprite('preThunder', 'blent/PreThunder', defaultBoyfriendX-275, defaultBoyfriendY-250);
    

	if not lowQuality then
	end

	setScrollFactor('magicCircle', 1, 1);
	setScrollFactor('circleAura', 1, 1);
	setScrollFactor('preThunder', 1, 1);

	addAnimationByPrefix('magicCircle', 'Idle', 'MagicCircle idle', 24, true);
	addAnimationByPrefix('circleAura', 'Idle', 'MagicAura idle', 24, false);
	addAnimationByPrefix('preThunder', 'First', 'PreThunder one', 24, false);
	addAnimationByPrefix('preThunder', 'Second', 'PreThunder two', 24, false);

	addLuaSprite('magicCircle', false);
	addLuaSprite('circleAura', true);
	addLuaSprite('preThunder', true);

	if songName == 'performance' then
		makeLuaSprite('Attention', 'blent/attention', -150, 150);
		setScrollFactor('Attention', 0, 0);
		
	end
	

	objectPlayAnimation('magicCircle', 'Idle', false);
	
	--objectPlayAnimation('preThunder', 'First', true);

	close(true);
end