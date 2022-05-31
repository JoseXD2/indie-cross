function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'plr3' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'nota/flechassans'); --Change texture
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            end
        end
    end
end