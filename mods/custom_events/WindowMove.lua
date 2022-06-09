---like this
    function onEvent(name, value1, value2)
	--setPropertyFromClass('openfl.Lib','application.window.x', value1)
    doTweenX('window', setPropertyFromClass('openfl.Lib','application.window.x'), value1, value1, 'elasticInOut')
    doTweenY('window2', setPropertyFromClass('openfl.Lib','application.window.y'), value2, value2, 'elasticInOut')
    --setPropertyFromClass('openfl.Lib','application.window.y', value2) 
end