local height = 0 
local height2 = 0 
local height3 = 0 
local height4 = 0 
local spriteName = "zassets/bendy/images/stairs/scrollingBG" 
local spriteName2 = "zassets/bendy/images/stairs/stairs" 
local spriteName3 = "zassets/bendy/images/stairs/chainleft" 
local spriteName4 = "zassets/bendy/images/stairs/chainright" 
esoasbelin = 0

function onCreate()  
makeLuaSprite("bg1", spriteName, -200, 0)  
height = getProperty("bg1.height")     
makeLuaSprite("bg2", spriteName,  -200, height-20)     
addLuaSprite("bg1", false)  
addLuaSprite("bg2", false)    

makeLuaSprite("bg3", spriteName2, 0, 0)  
height2 = getProperty("bg3.height")      
addLuaSprite("bg3", true)  

makeLuaSprite("bg5", spriteName3, 200, 0)  
height3 = getProperty("bg5.height")     
makeLuaSprite("bg6", spriteName3,  200, height3-20)     
addLuaSprite("bg5", true)  
addLuaSprite("bg6", true)    

makeLuaSprite("bg7", spriteName4, 2500, 0)  
height4 = getProperty("bg7.height")     
makeLuaSprite("bg8", spriteName4,  2500, height4-20)     
addLuaSprite("bg7", true)  
addLuaSprite("bg8", true)  

setProperty('bg1.visible', false);
setProperty('bg2.visible', false);
setProperty('bg3.visible', false);
setProperty('bg4.visible', false);
setProperty('bg5.visible', false);
setProperty('bg6.visible', false);
setProperty('bg7.visible', false);
setProperty('bg8.visible', false);

scaleObject('bg1', 4, 4);
scaleObject('bg2', 4, 4);
scaleObject('bg3', 4.5, 4);
scaleObject('bg4', 4, 4);
scaleObject('bg5', 4, 4);
scaleObject('bg6', 4, 4);
scaleObject('bg7', 4, 4);
scaleObject('bg8', 4, 4);
end 

function onEvent(name,value1,value2)
if name == "Asbel" then
if value1 == 'escaleras' then
setProperty("defaultCamZoom", 0.4) 
triggerEvent('Camera Follow Pos', '1700', '1400');
setProperty('Fuck_the_hallway.visible', false);
setProperty('Fuck_the_hallway_but_Dark.visible', false);
setProperty('bg1.visible', true);
setProperty('bg2.visible', true);
setProperty('bg3.visible', true);
setProperty('bg4.visible', true);
setProperty('bg5.visible', true);
setProperty('bg6.visible', true);
setProperty('bg7.visible', true);
setProperty('bg8.visible', true);
doTweenY("bg1Tween", "bg1", -height, 3, "linear")  
doTweenY("bg2Tween", "bg2", -20, 3, "linear") 
doTweenY("bg3Tween", "bg3", -height2 -200, 2, "linear")  
doTweenY("bg4Tween", "bg4",  -1, 2, "linear") 
doTweenY("bg5Tween", "bg5", -height3, 2, "linear")  
doTweenY("bg6Tween", "bg6", -20, 2, "linear") 
doTweenY("bg7Tween", "bg7", -height4, 2, "linear")  
doTweenY("bg8Tween", "bg8", -20, 2, "linear") 
esoasbelin = 1
end
if value1 == 'parti' then
esoasbelin = 0
end
end
end

function onTweenCompleted(tag)  
if tag == "bg1Tween" and esoasbelin == 1 then    
setProperty("bg1.y", 0)    
setProperty("bg2.y", height-20)
doTweenY("bg1Tween", "bg1", -height, 3, "linear")
doTweenY("bg2Tween", "bg2", -20, 3, "linear")   
elseif tag == "bg3Tween" and esoasbelin == 1 then 
setProperty("bg3.y", 2000)    
doTweenY("bg3Tween", "bg3", -height2 -900, 1.5, "linear")  
doTweenY("bg4Tween", "bg4", -20, 1.5, "linear") 
setProperty("dad.y", 2580) 
setProperty("boyfriend.y", 2599) 
doTweenY("dad", "dad", -height2-1100, 2.2, "linear")
doTweenY("boyfriend", "boyfriend", -height2-1150, 2.3, "linear") 
elseif tag == "bg5Tween" then 
setProperty("bg5.y", 0)    
setProperty("bg6.y", height3-20) 
doTweenY("bg5Tween", "bg5", -height3, 2, "linear")  
doTweenY("bg6Tween", "bg6", -20, 2, "linear") 
elseif tag == "bg7Tween" then 
setProperty("bg7.y", 0)    
setProperty("bg8.y", height4-20) 
doTweenY("bg7Tween", "bg7", -height4, 2, "linear")  
doTweenY("bg8Tween", "bg8", -20, 2, "linear") 
end
end