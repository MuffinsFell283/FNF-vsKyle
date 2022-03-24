-- Event notes hooks
function onEvent(name)
	if name == 'NoteEvent' then
		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX3, 1, 'circInOut')
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX2, 1, 'circInOut')
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX1, 1, 'circInOut')
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX0, 1, 'circInOut')
		noteTweenAngle('defaultPlayerStrum0', 4, 180, 1, 'circInOut')
		noteTweenAngle('defaultPlayerStrum1', 5, 180, 1, 'circInOut')
		noteTweenAngle('defaultPlayerStrum2', 6, 180, 1, 'circInOut')
		noteTweenAngle('defaultPlayerStruX3', 7, 180, 1, 'circInOut')
		-- Event notes hooks
	end
end