-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'ThunderSounds' then
		
		nothing = tonumber(value1)
		if nothing == 0 then

		end
		nothing2 = tonumber(value2)
		if nothing2 == 0 then

		end

		playSound('thunder', 0.5);
	end


	
end