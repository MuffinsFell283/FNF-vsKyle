-- Event notes hooks
function onEvent(name,value1)
	if name == 'HUDTurn' then
		doTweenAngle('turn', 'camHUD', value1, 0.5,'circOut')
		doTweenAngle('game', 'camGame', value1, 0.5,'circOut')

		-- Event notes hooks
	end
end