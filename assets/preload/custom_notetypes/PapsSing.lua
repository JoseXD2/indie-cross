function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PapsSing' then
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'nota/flechaspaps');
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 

            end
        end
    end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'PapsSing' then
        local animToPlay = '';
        if noteData == 0 then
            animToPlay = 'singLEFT';
        elseif noteData == 1 then
            animToPlay = 'singDOWN';
        elseif noteData == 2 then
            animToPlay = 'singUP';
        elseif noteData == 3 then
            animToPlay = 'singRIGHT';
        end
        characterPlayAnim('gf', animToPlay, true);
        setProperty('gf.specialAnim', true);
    end
end