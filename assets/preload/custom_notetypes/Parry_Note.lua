function onCreate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Parry_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Parry_Note'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			end
		end
	end
end


local texture = 'ParrySplashes' 

function onStartCountdown()
    makeAnimatedLuaSprite('splashLeftP', texture)
    makeAnimatedLuaSprite('splashDownP', texture)
    makeAnimatedLuaSprite('splashUpP', texture)
    makeAnimatedLuaSprite('splashRightP', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLeftP', 'splash' ..i, 'Parry_assets ' ..i, 24, false)
        addAnimationByPrefix('splashDownP', 'splash' ..i, 'Parry_assets ' ..i, 24, false)
        addAnimationByPrefix('splashUpP', 'splash' ..i, 'Parry_assets ' ..i, 24, false)
        addAnimationByPrefix('splashRightP', 'splash' ..i, 'Parry_assets ' ..i, 24, false)
    end

    setProperty('splashLeftP.alpha', 1)
    setProperty('splashDownP.alpha', 1)
    setProperty('splashUpP.alpha', 1)
    setProperty('splashRightP.alpha', 1)

    scaleObject('splashLeftP', 0.5, 0.5);
    scaleObject('splashDownP', 0.5, 0.5);
    scaleObject('splashUpP', 0.5, 0.5);
    scaleObject('splashRightP', 0.5, 0.5);

    setObjectCamera('splashLeftP', 'camHUD');
    setObjectCamera('splashDownP', 'camHUD');
    setObjectCamera('splashUpP', 'camHUD');
    setObjectCamera('splashRightP', 'camHUD');

    setProperty('splashLeftP.visible', false)
    setProperty('splashDownP.visible', false)
    setProperty('splashUpP.visible', false)
    setProperty('splashRightP.visible', false)

    setProperty('splashLeftP.offset.x', 10)
    setProperty('splashLeftP.offset.y', 10)
    setProperty('splashDownP.offset.x', 10)
    setProperty('splashDownP.offset.y', 10)
    setProperty('splashUpP.offset.x', 10)
    setProperty('splashUpP.offset.y', 10)
    setProperty('splashRightP.offset.x', 10)
    setProperty('splashRightP.offset.y', 10)


    setObjectOrder('splashLeftP', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDownP', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUpP', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRightP', getObjectOrder('grpNoteSplashes'))
    

    addLuaSprite('splashLeftP')
    addLuaSprite('splashDownP')
    addLuaSprite('splashUpP')
    addLuaSprite('splashRightP')

    return Function_Continue
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Parry_Note' then
	playSound('parry', 10);
    if noteData == 0 and not isSustainNote then
        setProperty('splashLeftP.x', getPropertyFromGroup('playerStrums', 0, 'x')-(290*0.7)*0.95)
        setProperty('splashLeftP.y', getPropertyFromGroup('playerStrums', 0, 'y')-(305*0.7))
        setProperty('splashLeftP.visible', true)
        objectPlayAnimation('splashLeftP', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashLeftP.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 1 and not isSustainNote  then
        setProperty('splashDownP.x', getPropertyFromGroup('playerStrums', 1, 'x')-(290*0.7)*0.95)
        setProperty('splashDownP.y', getPropertyFromGroup('playerStrums', 1, 'y')-(305*0.7))
        setProperty('splashDownP.visible', true)
        objectPlayAnimation('splashDownP', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashDownP.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 2 and not isSustainNote then
        setProperty('splashUpP.x', getPropertyFromGroup('playerStrums', 2, 'x')-(290*0.7)*0.95)
        setProperty('splashUpP.y', getPropertyFromGroup('playerStrums', 2, 'y')-(305*0.7))
        setProperty('splashUpP.visible', true)
        objectPlayAnimation('splashUpP', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashUpP.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 3 and not isSustainNote then
        setProperty('splashRightP.x', getPropertyFromGroup('playerStrums', 3, 'x')-(290*0.7)*0.95)
        setProperty('splashRightP.y', getPropertyFromGroup('playerStrums', 3, 'y')-(305*0.7))
        setProperty('splashRightP.visible', true)
        objectPlayAnimation('splashRightP', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashRightP.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))   
      end 
   end
end

function onUpdate()
    if getProperty('splashLeftP.animation.curAnim.finished') and getProperty('splashLeftP.visible') then
        setProperty('splashLeftP.visible', false)
    end
    if getProperty('splashDownP.animation.curAnim.finished') and getProperty('splashDownP.visible') then
        setProperty('splashDownP.visible', false)
    end
    if getProperty('splashUpP.animation.curAnim.finished') and getProperty('splashUpP.visible') then
        setProperty('splashUpP.visible', false)
    end
    if getProperty('splashRightP.animation.curAnim.finished') and getProperty('splashRightP.visible') then
    setProperty('splashRightP.visible', false)
    end 
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Parry_Note' then
		playSound('parry', 10);
	end
end
