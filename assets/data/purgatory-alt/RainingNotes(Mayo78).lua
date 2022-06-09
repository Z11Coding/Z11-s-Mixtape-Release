function onUpdate()
  songPos = getSongPosition()
  currentBeat = (songPos/5000)*(curBpm/60)
  if not inGameOver then
    for i=0,3 do
      setPropertyFromGroup('opponentStrums', i, 'x', (screenWidth/3)*math.sin((currentBeat*(i+1)))+630)
      setPropertyFromGroup('playerStrums', i, 'x', (screenWidth/3)*math.sin((currentBeat*(i+1)*2))+630)

      setPropertyFromGroup('opponentStrums', i, 'y', (screenHeight/3)*math.tan((currentBeat*(i+1))*2)+(screenHeight/2))
      setPropertyFromGroup('playerStrums', i, 'y', (screenHeight/3)*math.tan((currentBeat*(i+1)*2)*2)+(screenHeight/2))
    end
  end
end