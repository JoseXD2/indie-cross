function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == '' then	
triggerEvent('Screen Shake', '0.9, 0.01', '0.020, 0.01');
end 
if noteType == 'fire_head' and not isSustainNote then	
triggerEvent('Screen Shake', '0.30, 0.02', '0.35, 0.01');
setProperty('health', getProperty('health')-0.070);	
   end
end