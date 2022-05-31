function goodNoteHit(id, noteData, direction, noteType, isSustainNote)
if not isSustainNote then
setProperty('health', getProperty('health')+ 0.027);
end
end 