local allowCountdown = false
local screen = {'loading/qtgetstrolled', 'loading/omfg-its-q'}

function onStartCountdown()
if not allowCountdown then
 return Function_Stop
end	if allowCountdown then
 return Function_Continue
end
end
function onCreatePost()
local randomScreenInt = getRandomInt(0, (screen))
makeLuaSprite('screen', screen[randomScreenInt], 0, 0)
addLuaSprite('screen')
setObjectCamera('screen', 'other')
runTimer('adios', , 1)
end

function onTimerCompleted(tag)
if tag == 'adios' then
removeLuaSprite(screen[randomScreenInt], true)
allowCountdown = true
startCountdown()	
end
end
