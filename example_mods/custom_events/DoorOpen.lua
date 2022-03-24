-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'DoorOpen' then
		
		nothing = tonumber(value1)
		if nothing == 0 then
			
		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then
			
		end
		
		playSound('dooropenSE', 1);
		objectPlayAnimation('stageback', 'Open');
		characterPlayAnim('dad', 'Animation', false);
		setProperty('dad.specialAnim', true);
	end


	
end