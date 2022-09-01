local anims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}

function noteMissPress(direction)
   if(daveMiss) then
   characterPlayAnim('boyfriend', anims[direction + 1], true)
   setProperty('boyfriend.color', getColorFromHex('000084'));   
   end
end

function noteMiss(id, direction, noteType, isSustainNote)
   if(daveMiss) then
   characterPlayAnim('boyfriend', anims[direction + 1], true)
   setProperty('boyfriend.color', getColorFromHex('000084'));
   end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
   if(daveMiss) then
   setProperty('boyfriend.color', 16777215);
   end
end

function onUpdate()
 if(daveMiss) then
   if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'danceLeft' or getProperty('boyfriend.animation.curAnim.name') == 'danceRight' then
   setProperty('boyfriend.color', 16777215);
   end
 end
end