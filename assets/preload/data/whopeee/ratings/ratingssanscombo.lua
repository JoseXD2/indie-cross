local comboOffsetW = {0, 0, 0, 0}
  
function onCreatePost() 
if not lowQuality then
if downscroll then
comboOffsetW = {0, 0, 0, 0}
   end 
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if not lowQuality then
if not isSustainNote and getProperty('combo') > 10 then
makeLuaSprite('combo' .. getProperty('combo'), 'ratings/sans/combo', 625 + comboOffsetW[3] , 270 - comboOffsetW[4] )
setObjectCamera('combo' .. getProperty('combo'), 'hud')
scaleObject('combo' .. getProperty('combo'), 0.55, 0.55)
addLuaSprite('combo' .. getProperty('combo'), false)
setProperty('combo' .. getProperty('combo') .. '.velocity.y', 500)
setProperty('combo' .. getProperty('combo') .. '.velocity.y', -150)
doTweenAlpha('tweenCombo3' .. getProperty('combo'), 'combo' .. getProperty('combo'), 0, 0.65, 'quartIn')
end
end
end

function onTweenCompleted(tag)
if tag == 'tweenCombo3' then
removeLuaSprite('combo', true);
	end
end