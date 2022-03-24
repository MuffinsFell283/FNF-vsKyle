-- Event notes hooks
function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;

	timing = 120 / bpm * 0.5;
	
	
	
end

function onSongStart()
	addLuaSprite('Attention',true);
end


function onEvent(name, value1, value2)
	if name == 'Aid Attack' then
		
		nothing = tonumber(value1)
		if nothing == 0 then
			
		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then
			
		end
		
		playSound('aid-attack-pre', 0.5);
		
		
		objectPlayAnimation('leaf', 'attackpre1', true);
		if botPlay == false then
			canDodge = true;
			runTimer('Died', (timing * 2) + 0.09);
		elseif botPlay == true then
			runTimer('Died', timing * 2);
		end
		
		runTimer('AttackSound', timing * 2);
		runTimer('atention', timing);
	end


	
end

function onUpdate()
	if canDodge == true and botPlay == false and keyJustPressed('space')then

		Dodged = true;
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		canDodge = false;

	end

end


function onTimerCompleted(tag, loops, loopsLeft)
	
	if tag == 'atention' then
		playSound('aid-attack-pre', 0.5);
		objectPlayAnimation('leaf', 'attackpre2', true);
	end

	if tag == 'Died' and botPlay == false and Dodged == false then
		removeLuaSprite('Attention');
		
		
		objectPlayAnimation('leaf', 'attack', true);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('dad', 'attack', true);
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
		if getProperty('health') > 0.02 then
			setProperty('health', 0.02)
		end
	end

	if tag == 'Died' and Dodged == true and botPlay == false then
		removeLuaSprite('Attention');
		if botPlay == true then
			characterPlayAnim('boyfriend', 'dodge', true);
			setProperty('boyfriend.specialAnim', true);
		end
		
		objectPlayAnimation('leaf', 'attack', true);
		characterPlayAnim('dad', 'attack', true);
		setProperty('dad.specialAnim', true);
		
		Dodged = false;
	end

	if tag == 'Died' and botPlay == true then
		removeLuaSprite('Attention');
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('dad', 'attack', true);
		setProperty('dad.specialAnim', true);
		
		objectPlayAnimation('leaf', 'attack', true);
		
	end

	if tag == 'AttackSound' then
		playSound('aid-attack', 0.5);
	end
end