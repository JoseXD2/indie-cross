function onCreatePost()
makeLuaText("nametext", songName, 0, 580, 21.5)
setTextSize('nametext', 15.9)
addLuaText("nametext")
setTextFont("nametext", "bendyus.ttf");
setTextAlignment('nametext', 'left')
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
end

function onCreate()

makeLuaSprite('black', 'black', 297.5, 20)
makeLuaSprite('gray', 'gray', 303, 25.25)
makeLuaSprite('cuphead', 'barss/bendy', 303, 25.25)

addLuaSprite('black', true)
addLuaSprite('gray', true)
addLuaSprite('cuphead', true)

setObjectCamera('nametext', 'hud')
setObjectCamera('black', 'hud')
setObjectCamera('gray', 'hud')
setObjectCamera('cuphead', 'hud')

scaleObject('black', 2, .065)
scaleObject('gray', 1.965, .035)
scaleObject('cuphead', 1.965, .035)
end

function onUpdate()
    scaleObject('cuphead', 1.965 * getProperty("songPercent"), .035)
    if downscroll then 
        setProperty('black.y', 685)
        setProperty('gray.y', 690)
        setProperty('cuphead.y', 690)
        setProperty('nametext.y', 685)
    end
end
