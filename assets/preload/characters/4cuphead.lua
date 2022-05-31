local texture = 'nota/splashcupn' 

function onStartCountdown()
    makeAnimatedLuaSprite('splashLeftCH', texture)
    makeAnimatedLuaSprite('splashDownCH', texture)
    makeAnimatedLuaSprite('splashUpCH', texture)
    makeAnimatedLuaSprite('splashRightCH', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLeftCH', 'splash' ..i, 'negro ' ..i, 24, false)
        addAnimationByPrefix('splashDownCH', 'splash' ..i, 'color ' ..i, 24, false)
        addAnimationByPrefix('splashUpCH', 'splash' ..i, 'negro ' ..i, 24, false)
        addAnimationByPrefix('splashRightCH', 'splash' ..i, 'color ' ..i, 24, false)
    end

    setProperty('splashLeftCH.alpha', 1)
    setProperty('splashDownCH.alpha', 1)
    setProperty('splashUpCH.alpha', 1)
    setProperty('splashRightCH.alpha', 1)

    setObjectCamera('splashLeftCH', 'camHUD')
    setObjectCamera('splashDownCH', 'camHUD')
    setObjectCamera('splashUpCH', 'camHUD')
    setObjectCamera('splashRightCH', 'camHUD')

    setProperty('splashLeftCH.visible', false)
    setProperty('splashDownCH.visible', false)
    setProperty('splashUpCH.visible', false)
    setProperty('splashRightCH.visible', false)

    setProperty('splashLeftCH.offset.x', 10)
    setProperty('splashLeftCH.offset.y', 10)
    setProperty('splashDownCH.offset.x', 10)
    setProperty('splashDownCH.offset.y', 10)
    setProperty('splashUpCH.offset.x', 10)
    setProperty('splashUpCH.offset.y', 10)
    setProperty('splashRightCH.offset.x', 10)
    setProperty('splashRightCH.offset.y', 10)

    setObjectOrder('splashLeftCH', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDownCH', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUpCH', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRightCH', getObjectOrder('grpNoteSplashes'))
    
    addLuaSprite('splashLeftCH')
    addLuaSprite('splashDownCH')
    addLuaSprite('splashUpCH')
    addLuaSprite('splashRightCH')

    return Function_Continue
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if not lowQuality then    
    if noteType == '' then
    if noteData == 0 and not isSustainNote then
        setProperty('splashLeftCH.x', getPropertyFromGroup('opponentStrums', 0, 'x')-(111*0.7)*0.95)
        setProperty('splashLeftCH.y', getPropertyFromGroup('opponentStrums', 0, 'y')-(111*0.7))
        setProperty('splashLeftCH.visible', true)
        objectPlayAnimation('splashLeftCH', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashLeftCH.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 1 and not isSustainNote  then
        setProperty('splashDownCH.x', getPropertyFromGroup('opponentStrums', 1, 'x')-(111*0.7)*0.95)
        setProperty('splashDownCH.y', getPropertyFromGroup('opponentStrums', 1, 'y')-(111*0.7))
        setProperty('splashDownCH.visible', true)
        objectPlayAnimation('splashDownCH', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashDownCH.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 2 and not isSustainNote then
        setProperty('splashUpCH.x', getPropertyFromGroup('opponentStrums', 2, 'x')-(111*0.7)*0.95)
        setProperty('splashUpCH.y', getPropertyFromGroup('opponentStrums', 2, 'y')-(111*0.7))
        setProperty('splashUpCH.visible', true)
        objectPlayAnimation('splashUpCH', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashUpCH.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 3 and not isSustainNote then
        setProperty('splashRightCH.x', getPropertyFromGroup('opponentStrums', 3, 'x')-(111*0.7)*0.95)
        setProperty('splashRightCH.y', getPropertyFromGroup('opponentStrums', 3, 'y')-(111*0.7))
        setProperty('splashRightCH.visible', true)
        objectPlayAnimation('splashRightCH', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashRightCH.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))  
        end 
    end 
end
end

function onUpdate()
if not lowQuality then
    if getProperty('splashLeftCH.animation.curAnim.finished') and getProperty('splashLeftCH.visible') then
        setProperty('splashLeftCH.visible', false)
    end
    if getProperty('splashDownCH.animation.curAnim.finished') and getProperty('splashDownCH.visible') then
        setProperty('splashDownCH.visible', false)
    end
    if getProperty('splashUpCH.animation.curAnim.finished') and getProperty('splashUpCH.visible') then
        setProperty('splashUpCH.visible', false)
    end
    if getProperty('splashRightCH.animation.curAnim.finished') and getProperty('splashRightCH.visible') then
    setProperty('splashRightCH.visible', false)
    end 
end
end