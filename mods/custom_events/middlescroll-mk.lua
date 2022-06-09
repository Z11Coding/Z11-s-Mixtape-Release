function onEvent(name, value1, value2)
    if not middlescroll then
	    for i = 0,8 do
		    if value2 == '1' then
			    if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    end
		    	if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
			    end
            end
		    if value2 == '2' then
		    	if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    end
		    	if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
			    	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
			    end
            end
	    	if value2 == '3' then
		    	if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
	    			setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
	    			setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
	    		end
	    		if value1 == '0' then
	    		    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
	    			setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
	    			setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
		    		setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
		    	end
            end
	    	if value2 == '4' then
		    	if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
		    	end
	    		if value1 == '0' then
			    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
				setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
				setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
				setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
                setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
				setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
				setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
				setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
		    	end
            end
	    	if value2 == '5' then
	    		if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
			    	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 320);
			    end
			    if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
		    		setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
			    	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
			    	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
		    		setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
	    			setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
		    		setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
		    		setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
	    			setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 0);
		    	end
            end
	    	if value2 == '6' then
	    		if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
		    		setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
		    		setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
		    		setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 320);
		    		setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 320);
		    	end
		    	if value1 == '0' then
		    	    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
		    		setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
		    		setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
		    		setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
		    		setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 -0);
		    		setPropertyFromGroup('opponentStrums', 5, 'x', defaultOpponentStrumX5 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
		    		setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
		    		setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 0);
			    	setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 0);
			    end
            end
	    	if value2 == '7' then
	    		if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
			    	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 320);
			    	setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 320);
			    	setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 320);
		    	end
			    if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
		    		setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
		    		setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
		    		setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
			    	setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 -0);
			    	setPropertyFromGroup('opponentStrums', 5, 'x', defaultOpponentStrumX5 -0);
			    	setPropertyFromGroup('opponentStrums', 6, 'x', defaultOpponentStrumX6 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
		    		setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
		    		setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
		    		setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 0);
		    		setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 0);
		    		setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 0);
		    	end
            end
		    if value2 == '8' then
		    	if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
			    	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 320);
		    		setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 320);
			    	setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 320);
		    		setPropertyFromGroup('playerStrums', 7, 'x', defaultPlayerStrumX7 - 320);
		    	end
		    	if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
		    		setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
			    	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
			    	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
			    	setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 -0);
			    	setPropertyFromGroup('opponentStrums', 5, 'x', defaultOpponentStrumX5 -0);
			    	setPropertyFromGroup('opponentStrums', 6, 'x', defaultOpponentStrumX6 -0);
			    	setPropertyFromGroup('opponentStrums', 7, 'x', defaultOpponentStrumX7 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
			    	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 0);
			    	setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 0);
			    	setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 0);
			    	setPropertyFromGroup('playerStrums', 7, 'x', defaultPlayerStrumX7 - 0);
		    	end
            end
	    	if value2 == '9' then
		    	if value1 == '1' then
                    setPropertyFromGroup('opponentStrums', i, 'x', -5000);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
			    	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
			    	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
			    	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
			    	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 320);
			    	setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 320);
			    	setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 320);
			    	setPropertyFromGroup('playerStrums', 7, 'x', defaultPlayerStrumX7 - 320);
			    	setPropertyFromGroup('playerStrums', 8, 'x', defaultPlayerStrumX8 - 320);
		    	end
			    if value1 == '0' then
			        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 -0);
			    	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 -0);
			    	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 -0);
				    setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 -0);
			    	setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 -0);
			    	setPropertyFromGroup('opponentStrums', 5, 'x', defaultOpponentStrumX5 -0);
		    		setPropertyFromGroup('opponentStrums', 6, 'x', defaultOpponentStrumX6 -0);
		    		setPropertyFromGroup('opponentStrums', 7, 'x', defaultOpponentStrumX7 -0);
		    		setPropertyFromGroup('opponentStrums', 8, 'x', defaultOpponentStrumX8 -0);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
		    		setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
		    		setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
		    		setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
	    			setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 - 0);
		    		setPropertyFromGroup('playerStrums', 5, 'x', defaultPlayerStrumX5 - 0);
		    		setPropertyFromGroup('playerStrums', 6, 'x', defaultPlayerStrumX6 - 0);
		    		setPropertyFromGroup('playerStrums', 7, 'x', defaultPlayerStrumX7 - 0);
		    		setPropertyFromGroup('playerStrums', 8, 'x', defaultPlayerStrumX8 - 0);
				end
			end
        end
    end
end