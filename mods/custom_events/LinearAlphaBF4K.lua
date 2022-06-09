function onEvent(name, value1, value2)
	-- bf notesFade
	if name == 'LinearAlphaBF' then
		noteTweenAlpha('OEF',4 , value2 , value1 + 0.01, 'linear');
		noteTweenAlpha('OFF',5 , value2 , value1 + 0.01, 'linear');
		noteTweenAlpha('OGF',6, value2 , value1 + 0.01, 'linear');
		noteTweenAlpha('OHF',7 , value2 , value1 + 0.01, 'linear');
	
	

	
end
end