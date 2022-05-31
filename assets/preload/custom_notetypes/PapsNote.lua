local noteName = "PapsNote"

function onCreatePost()
addLuaScript('custom_notetypes/PapsNoteSplash')
end

function onCreate()
   for a = 0, getProperty('unspawnNotes.length') - 1 do
      local strumTime = getPropertyFromGroup('unspawnNotes', a, 'strumTime');
      local noteData = getPropertyFromGroup('unspawnNotes', a, 'noteData');
      local sus = getPropertyFromGroup('unspawnNotes', a, 'isSustainNote');
      if getPropertyFromGroup('unspawnNotes', a, 'noteType') == noteName then
         
         setPropertyFromGroup("unspawnNotes", a, "offsetX", getRandomInt(-60,-60, -60) * 10)
         if sus then 
            setPropertyFromGroup("unspawnNotes", a, "offsetX", getPropertyFromGroup('unspawnNotes', a, 'prevNote.offsetX'))
         end
      end
   end
end

function noteMiss(id, noteData, noteType, isSustainNote)
   if noteType == 'PapsNote' then
      setProperty('health', -2);
   end
end

function onUpdatePost(elapsed)
   for a = 0, getProperty('notes.length') - 1 do
      local strumTime = getPropertyFromGroup('notes', a, 'strumTime');
      local noteData = getPropertyFromGroup('notes', a, 'noteData');
      local sus = getPropertyFromGroup('notes', a, 'isSustainNote');
      local fixOffset = (getPropertyFromClass("PlayState", "isPixelState") and 30 or getPropertyFromClass("Notes", "swagWidth") / 2)
      if getPropertyFromGroup('notes', a, 'noteType') == noteName then
         if (strumTime - getSongPosition()) < 1300 / scrollSpeed + 100 then
               setPropertyFromGroup("notes", a, "offsetX", lerp(getPropertyFromGroup("notes", a, "offsetX"), 0 + (sus and fixOffset or 0), elapsed * (6 * scrollSpeed)))
         end

      end
   end
end

function lerp(a, b, t)
   return a + (b - a) * t
end