function onCreatePost()
 if getPropertyFromClass('ClientPrefs', 'sideScroll', true) then
    for i = 0, getProperty('unspawnNotes.length')-1 do
         setPropertyFromGroup('playerStrums', i, 'direction', 0)
         setPropertyFromGroup('playerStrums', i, 'x', 50)
         setPropertyFromGroup('playerStrums', i, 'angle', -90)
         setPropertyFromGroup('opponentStrums', i, 'alpha', 0)
         setPropertyFromGroup('opponentStrums', i, 'x', 1300)
    end

    noteTweenY('1y', 4, 440, 0.5, 'linear')
    noteTweenY('2y', 5, 330, 0.5, 'linear')
    noteTweenY('3y', 6, 220, 0.5, 'linear')
    noteTweenY('4y', 7, 110, 0.5, 'linear')
 end
end