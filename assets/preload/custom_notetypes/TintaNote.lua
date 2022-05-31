seeeee = 0

function onCreate()
	makeLuaSprite('lel', 'zassets/bendy/images/Damage04', 0, 0)
	scaleObject('lel', 0.7, 0.7)
	setScrollFactor('lel', 0, 0)
	addLuaSprite('lel', true) 
	setObjectCamera('lel', 'camHUD');
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'TintaNote' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'INK_assets'); 
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function onCreatePost()
setProperty('lel.alpha', 0);
end


function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'TintaNote' then
		seeeee = seeeee + 0.1
		playSound('dust', 1)
		setProperty('lel.alpha', seeeee)
		noGen = getProperty('health')
		setProperty('health', noGen- 0.023);
		addScore(0)
		runTimer('remove', 18, 1) 
	end

	if getProperty('lel.alpha') == 1 then
		setHealth(0)
	end
end

		
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'remove' then
		seeeee = 0;
		doTweenAlpha('begone', 'lel', 0, 0.6, 'linear')  
	end
end

		
		
		
		