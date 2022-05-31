function onEvent(name,value1)
if name == 'Asbel' then
if value1 == 'hno' then
doTweenAlpha('hud', 'camHUD', 0, 1.5, 'linear')
end    
if value1 == 'hsi' then
doTweenAlpha('hud2', 'camHUD', 1, 1.5, 'linear')
end    
if value1 == 'gno' then
doTweenAlpha('hud3', 'camGame', 0, 1.5, 'linear')
end    
if value1 == 'gsi' then
doTweenAlpha('hud4', 'camGame', 1, 1.5, 'linear')
end    
if value1 == 'tno' then
doTweenAlpha('hud5', 'camHUD', 0, 1.8, 'linear')
doTweenAlpha('hud3', 'camGame', 0, 1.8, 'linear')
end    
if value1 == 'tsi' then
doTweenAlpha('hud6', 'camHUD', 1, 0.5, 'linear')
doTweenAlpha('hud4', 'camGame', 1, 0.5, 'linear')
end
end 
end