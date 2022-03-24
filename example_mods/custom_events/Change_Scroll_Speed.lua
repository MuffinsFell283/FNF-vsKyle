-- Event notes hooks
function onEvent(name,value1)
	if name == 'Play Sound' then
		setPropertyFromClass('PlayState', 'SONG.speed', value1);
		
		-- Event notes hooks
	end
end