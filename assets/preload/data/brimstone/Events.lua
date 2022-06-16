function onStepHit()
	if curStep == 99 then
		cameraShake('game',0.01,0.2)
	end

	if curStep == 114 then
		cameraShake('game',0.01,0.2)
	end

	if curStep == 130 then
		cameraShake('game',0.01,0.2)
	end

	if curStep == 138 then
		cameraShake('game',0.01,0.2)
	end

	if curStep == 146 then
		cameraShake('game',0.01,0.2)
	end

	if curStep == 2371 then
		setProperty('defaultCamZoom', 0.55);
	end

	if curStep == 2403 then
		setProperty('defaultCamZoom', 0.63);
		doTweenColor('bfColorTween', 'boyfriend', '8abf76', 0.01, 'linear')
		doTweenColor('dadColorTween', 'dad', '8abf76', 0.01, 'linear')
		doTweenColor('bgColorTween', 'bg', '8abf76', 0.01, 'linear')
	end

	if curStep == 2664 then
		setProperty('defaultCamZoom', 0.57);
		doTweenColor('bfColorTween', 'boyfriend', 'FFFFFF', 0.01, 'linear')
		doTweenColor('dadColorTween', 'dad', 'FFFFFF', 0.01, 'linear')
		doTweenColor('bgColorTween', 'bg', 'FFFFFF', 0.01, 'linear')
	end

	if curStep == 3476 then
		setProperty('defaultCamZoom', 0.59);
	end

	if curStep == 3484 then
		setProperty('defaultCamZoom', 0.61);
		doTweenColor('bfColorTween', 'boyfriend', 'e1fad8', 0.01, 'linear')
		doTweenColor('dadColorTween', 'dad', 'e1fad8', 0.01, 'linear')
		doTweenColor('bgColorTween', 'bg', 'e1fad8', 0.01, 'linear')
	end

	if curStep == 3484 then
		setProperty('defaultCamZoom', 0.59);
		doTweenColor('bfColorTween', 'boyfriend', '85bb75', 0, 'linear')
		doTweenColor('dadColorTween', 'dad', '85bb75', 0, 'linear')
		doTweenColor('bgColorTween', 'bg', '85bb75', 0, 'linear')
	end

	if curStep == 3492 then
		setProperty('defaultCamZoom', 0.61);
		doTweenColor('bfColorTween', 'boyfriend', '3b695a', 1, 'linear')
		doTweenColor('dadColorTween', 'dad', '3b695a', 1, 'linear')
		doTweenColor('bgColorTween', 'bg', '3b695a', 1, 'linear')
	end

	if curStep == 3500 then
		setProperty('defaultCamZoom', 0.63);
		doTweenColor('bfColorTween', 'boyfriend', '0a1823', 2, 'linear')
		doTweenColor('dadColorTween', 'dad', '0a1823', 2, 'linear')
		doTweenColor('bgColorTween', 'bg', '0a1823', 2, 'linear')
	end

	if curStep == 3509 then
		setProperty('defaultCamZoom', 0.65);
		doTweenColor('bfColorTween', 'boyfriend', 0, 3, 'linear')
		doTweenColor('dadColorTween', 'dad', 0, 3, 'linear')
		doTweenColor('bgColorTween', 'bg', 0, 3, 'linear')
	end

	if curStep == 3638 then
		cameraFlash('game','FFFFFF',0.2,false)
	end

	if curStep == 3639 then
		setProperty('defaultCamZoom', 0.57);
		doTweenColor('bfColorTween', 'boyfriend', 'FFFFFF', 0.01, 'linear')
		doTweenColor('dadColorTween', 'dad', 'FFFFFF', 0.01, 'linear')
		doTweenColor('bgColorTween', 'bg', 'FFFFFF', 0.01, 'linear')
	end
end