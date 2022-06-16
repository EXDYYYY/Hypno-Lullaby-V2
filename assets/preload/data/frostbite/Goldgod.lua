
function onCreatePost()

	if not middlescroll then -- Checks if it isn't middlescroll
		for i=0, getProperty('playerStrums.length')-1 do -- Moves Player Strums to The place where oppponent strums were
			setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('opponentStrums', i, 'x'))
		end
		for i=0, getProperty('opponentStrums.length')-1 do -- Since I am stupid and bad at symmetry, I made this bad convert from opponent to player positions
			setPropertyFromGroup('opponentStrums', i, 'x', 732 + i*112)
		end
 	 end
  end

--Script By Plotsh (Pls Credit Me)