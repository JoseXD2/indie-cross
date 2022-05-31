local nada = true
local poco = false
local normal = false
local mucho = false
local absurdo = false
local xdd = true

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == '1' then
nada = true
end
if value1 == '2' then
poco = true
end
if value1 == '3' then
normal = true
end
if value1 == '4' then
mucho = true
end
if value1 == '5' then
absurdo = true
end
end 
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == '' then
	if nada == true and not isSustainNote then	
	health = getProperty('health')  
	if getProperty('health') > 0.45 then
	setProperty('health', health- 0.00);
	end
end
if poco == true and not isSustainNote then	
	health = getProperty('health')
	if getProperty('health') > 0.45 then
	setProperty('health', health- 0.0080);
	end
end
if normal == true and not isSustainNote then	
	health = getProperty('health')
	if getProperty('health') > 0.45 then
	setProperty('health', health- 0.01);
	end
end
if mucho == true and not isSustainNote then	
	health = getProperty('health')
	if getProperty('health') > 0.45 then
	setProperty('health', health- 0.05);
	end
end
if absurdo == true and not isSustainNote then	
	health = getProperty('health')
	if getProperty('health') > 0.45 then
	setProperty('health', health- 0.095); 
	end
	end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if xdd == true and not isSustainNote  then	
	setProperty('health', getProperty('health')+ 0.025);
	end
end