function onBeatHit()
    for i = 0, 7 do
        setPropertyFromGroup("strumLineNotes", i, "y", math.random(0, 720 - 160 * 0.7))
    end
end