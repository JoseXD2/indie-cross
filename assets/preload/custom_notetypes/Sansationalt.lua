function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sansationalt' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'nota/flechassans');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end
