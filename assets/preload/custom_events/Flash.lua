-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Flash' then
		makeLuaSprite('flash', 'FX/flash', -500, -500);
		scaleObject('flash', 900, 900);
		setLuaSpriteScrollFactor('flash', 0, 0);
		addLuaSprite('flash', true);
		doTweenAlpha('flash', 'flash', 0, 1, 'linear')
		runTimer('flashaway', 2)
	end
end

function onTimerCompleted(tag, loops, loopsLeft) 
	if name == 'flashaway' then
		removeLuaSprite('flash', true)
	end
end