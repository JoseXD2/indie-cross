local penesitoo = false

function onEvent(name, value1, value2)
if name == 'noteskinchange' then
if value1 == '' then
-- do nothing lol
else	
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', value1);
end
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', value1);
end
end
end
