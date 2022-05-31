function onEvent(name, value1, value2)
if not lowQuality then   
if name == 'gei' then
if value1 == '' then
-- do nothing lol
else	
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', value1);
end
end
end
end
end