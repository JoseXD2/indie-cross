sooo = 0

function onCreate()
	makeLuaSprite('Damage04', 'zassets/bendy/images/Damage04', 0, 0)
	scaleObject('Damage04', 0.7, 0.7)
	setScrollFactor('Damage04', 0, 0)
	addLuaSprite('Damage04', true) 
	setObjectCamera('Damage04', 'camHUD');
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'TintaNoteGlow' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'INKGlow_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then --Lets Opponent's notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function onCreatePost()
	setProperty('Damage04.alpha', 0);
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'TintaNoteGlow' then
		sooo = sooo + 0.1
		setProperty('Damage04.alpha', sooo)
		noGen = getProperty('health')
		setProperty('health', noGen- 0.023);
		addScore(0)
		runTimer('reppp', 18, 1) 
	end
	if getProperty('Damage04.alpha') == 1 then
		setHealth(0)
	end
end

		
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'reppp' then
		sooo = 0;
		doTweenAlpha('begone', 'Damage04', 0, 0.6, 'linear')  
	end
end