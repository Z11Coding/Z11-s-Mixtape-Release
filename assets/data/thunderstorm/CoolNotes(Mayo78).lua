angleJunk = 90
speed = 5
names = {'opponentStrums', 'playerStrums'}
function onCreatePost()
  angleJunk = getPropertyFromClass('clientPrefs', 'downscroll') == true and -90 or 90
  strumY = getPropertyFromClass('clientPrefs', 'downscroll') == true and 560 or 40
end
function onUpdate()
  songPos = getSongPosition()
  currentBeat = (songPos/5000)*(curBpm/60)
  for i=1,2,1 do
    local daName = names[i]
    for i=0,10 do
      local oddy = math.fmod(i, 2) == 0 and 1 or -1
      setPropertyFromGroup(daName, i, 'direction', 10*math.sin(currentBeat*speed)+angleJunk)
      setPropertyFromGroup(daName, i, 'angle', 10*math.sin(currentBeat*speed))
      setPropertyFromGroup(daName, i, 'y', 10*math.sin(currentBeat*speed+(i*getPropertyFromGroup(daName, i, 'height')))+strumY)
    end
  end
end