function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Orange Bone Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'OBONE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored

			end
		end
	end
end

local texture = 'NaranjaSplash' 

function onStartCountdown()
    makeAnimatedLuaSprite('splashLeftn', texture)
    makeAnimatedLuaSprite('splashDownn', texture)
    makeAnimatedLuaSprite('splashUpn', texture)
    makeAnimatedLuaSprite('splashRightn', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLeftn', 'splash' ..i, 'note splash orange ' ..i, 24, false)
        addAnimationByPrefix('splashDownn', 'splash' ..i, 'note splash orange ' ..i, 24, false)
        addAnimationByPrefix('splashUpn', 'splash' ..i, 'note splash orange ' ..i, 24, false)
        addAnimationByPrefix('splashRightn', 'splash' ..i, 'note splash orange ' ..i, 24, false)
    end

    setProperty('splashLeftn.alpha', 1)
    setProperty('splashDownn.alpha', 1)
    setProperty('splashUpn.alpha', 1)
    setProperty('splashRightn.alpha', 1)

    setObjectCamera('splashLeftn', 'other');
    setObjectCamera('splashDownn', 'other');
    setObjectCamera('splashUpn', 'other');
    setObjectCamera('splashRightn', 'other');

    setProperty('splashLeftn.visible', false)
    setProperty('splashDownn.visible', false)
    setProperty('splashUpn.visible', false)
    setProperty('splashRightn.visible', false)

    setProperty('splashLeftn.offset.x', 10)
    setProperty('splashLeftn.offset.y', 10)
    setProperty('splashDownn.offset.x', 10)
    setProperty('splashDownn.offset.y', 10)
    setProperty('splashUpn.offset.x', 10)
    setProperty('splashUpn.offset.y', 10)
    setProperty('splashRightn.offset.x', 10)
    setProperty('splashRightn.offset.y', 10)


    setObjectOrder('splashLeftn', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDownn', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUpn', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRightn', getObjectOrder('grpNoteSplashes'))
    

    addLuaSprite('splashLeftn')
    addLuaSprite('splashDownn')
    addLuaSprite('splashUpn')
    addLuaSprite('splashRightn')

    return Function_Continue
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Orange Bone Note' then
    if noteData == 0 and not isSustainNote then
        setProperty('splashLeftn.x', getPropertyFromGroup('playerStrums', 0, 'x')-(111*0.7)*0.95)
        setProperty('splashLeftn.y', getPropertyFromGroup('playerStrums', 0, 'y')-(111*0.7))
        setProperty('splashLeftn.visible', true)
        objectPlayAnimation('splashLeftn', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashLeftn.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 1 and not isSustainNote  then
        setProperty('splashDownn.x', getPropertyFromGroup('playerStrums', 1, 'x')-(111*0.7)*0.95)
        setProperty('splashDownn.y', getPropertyFromGroup('playerStrums', 1, 'y')-(111*0.7))
        setProperty('splashDownn.visible', true)
        objectPlayAnimation('splashDownn', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashDownn.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 2 and not isSustainNote then
        setProperty('splashUpn.x', getPropertyFromGroup('playerStrums', 2, 'x')-(111*0.7)*0.95)
        setProperty('splashUpn.y', getPropertyFromGroup('playerStrums', 2, 'y')-(111*0.7))
        setProperty('splashUpn.visible', true)
        objectPlayAnimation('splashUpn', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashUpn.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 3 and not isSustainNote then
        setProperty('splashRightn.x', getPropertyFromGroup('playerStrums', 3, 'x')-(111*0.7)*0.95)
        setProperty('splashRightn.y', getPropertyFromGroup('playerStrums', 3, 'y')-(111*0.7))
        setProperty('splashRightn.visible', true)
        objectPlayAnimation('splashRightn', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashRightn.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))   
      end 
   end
end

function onUpdate()
    if getProperty('splashLeftn.animation.curAnim.finished') and getProperty('splashLeftn.visible') then
        setProperty('splashLeftn.visible', false)
    end
    if getProperty('splashDownn.animation.curAnim.finished') and getProperty('splashDownn.visible') then
        setProperty('splashDownn.visible', false)
    end
    if getProperty('splashUpn.animation.curAnim.finished') and getProperty('splashUpn.visible') then
        setProperty('splashUpn.visible', false)
    end
    if getProperty('splashRightn.animation.curAnim.finished') and getProperty('splashRightn.visible') then
    setProperty('splashRightn.visible', false)
    end 
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Orange Bone Note' then
		setProperty('health', -2);
	end
end