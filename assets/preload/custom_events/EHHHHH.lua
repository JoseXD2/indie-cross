function onCreate()
precacheImage('zassets/bendy/images/dark/Trans');
end

function onEvent(name, value1, value2)
if name == "EHHHHH" then
makeAnimatedLuaSprite('Trans', 'zassets/bendy/images/dark/Trans', 0, 0);
addAnimationByPrefix('Trans', 'Trans', 'Trans', 24, true)
objectPlayAnimation('Trans', 'Trans', false);
setObjectCamera('Trans', 'hud')
addLuaSprite('Trans', false);
runTimer('xddd', 1.5)
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'xddd' then
removeLuaSprite('Trans')
    end
end