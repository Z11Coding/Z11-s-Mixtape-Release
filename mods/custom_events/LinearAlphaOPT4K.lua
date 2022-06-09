function onEvent(name, value1, value2)
	if name == 'LinearAlphaOPT' then
	-- oppt notefade
	noteTweenAlpha('OAF',0 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('OBF',1 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('OCF',2 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('ODF',3 , value2 , value1 + 0.01, 'linear');

	
end
end