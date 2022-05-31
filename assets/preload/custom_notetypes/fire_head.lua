function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'fire_head' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'fire_head'); 
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		   end 
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'fire_head' then
		setProperty('health', getProperty('health')-0.4);
		playSound('burnSound', 2)	
	end
end
