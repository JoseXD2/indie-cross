function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blue Bone Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BBONE_assets');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
  if noteType == 'Blue Bone Note' then
  	setProperty('health', -2);
  end
end