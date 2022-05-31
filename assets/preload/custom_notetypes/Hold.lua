function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hold' then
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end
