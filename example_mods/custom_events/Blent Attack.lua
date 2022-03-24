-- Event notes hooks
function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;

	timing = 120 / bpm * 0.5;
	
	if songName == 'Ecstasy-EX' then
		timing = 120 / bpm;
	else
		
	end
	
end

function onSongStart()
	addLuaSprite('Attention',true);
end


function onEvent(name, value1, value2)
	if name == 'Blent Attack' then
		
		nothing = tonumber(value1)
		if nothing == 0 then
			
		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then
			
		end
		
		playSound('thunder', 1);
		
		
		objectPlayAnimation('preThunder', 'First', true);
		if botPlay == false then
			canDodge = true;
			runTimer('Died', timing + 0.09);
		elseif botPlay == true then
			runTimer('Died', timing);
		end
		
		runTimer('thunderSound', timing - 0.03);
		runTimer('atention', timing / 2);
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
		playSound('thunder', 1);
		objectPlayAnimation('preThunder', 'Second', true);
	end

	if tag == 'Died' and botPlay == false and Dodged == false then
		removeLuaSprite('Attention');
		
		characterPlayAnim('girlfriend', 'scared', true);
		setProperty('girlfriend.specialAnim', true);
		objectPlayAnimation('lightninganim', 'attack', true);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
		
		if songName == 'Ecstasy-EX' then
			
			cameraShake('camGame', 0.05, 1);
			cameraShake('hud', 0.08, 1);
			setProperty('health', 0);
			
		else
			if songName == 'performance' then
				if difficulty == 1 then
				
					cameraShake('camGame', 0.05, 1);
					cameraShake('hud', 0.08, 1);
					setProperty('health', 0);
				end

				if difficulty == 0 then
				
					cameraShake('camGame', 0.05, 1);
					cameraShake('hud', 0.08, 1);
					setProperty('health', getProperty('health')-0.2);
				end
			else
				if difficulty == 2 then
			
					cameraShake('camGame', 0.05, 1);
					cameraShake('hud', 0.08, 1);
					setProperty('health', 0);
				end
		
				if difficulty == 1 then
				
					cameraShake('camGame', 0.05, 1);
					cameraShake('hud', 0.08, 1);
					setProperty('health', getProperty('health')-0.2);
				end

				if difficulty == 0 then
			
					cameraShake('camGame', 0.05, 0.5);
					cameraShake('hud', 0.08, 0.5);
					setProperty('health', getProperty('health')-0.1);
				end
			end
		end



		

		
	end

	if tag == 'Died' and Dodged == true and botPlay == false then
		removeLuaSprite('Attention');
		if botPlay == true then
			characterPlayAnim('boyfriend', 'dodge', true);
			setProperty('boyfriend.specialAnim', true);
		end
		characterPlayAnim('girlfriend', 'scared', true);
		setProperty('girlfriend.specialAnim', true);
		objectPlayAnimation('lightninganim', 'attack', true);
		cameraShake('camGame', 0.01, 0.2);
		Dodged = false;
	end

	if tag == 'Died' and botPlay == true then
		removeLuaSprite('Attention');
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('girlfriend', 'scared', true);
		setProperty('girlfriend.specialAnim', true);
		objectPlayAnimation('lightninganim', 'attack', true);
		cameraShake('camGame', 0.01, 0.2);
	end

	if tag == 'thunderSound' then
		playSound('thunder-hit', 1);
	end
end