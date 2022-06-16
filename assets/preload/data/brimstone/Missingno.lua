-- script by ItsCapp don't steal, it's dumb

-- simply, offsets. they're the numbers in the top left of the character editor
idleoffsets = {'-5', '0'} -- I recommend you have your idle offset at 0
leftoffsets = {'-11', '0'}
downoffsets = {'-10', '0'}
upoffsets = {'0', '0'}
rightoffsets = {'16', '0'}

missleftoffsets = {'-10', '0'}
missdownoffsets = {'-10', '0'}
missupoffsets = {'-2', '0'}
missrightoffsets = {'15', '1'}

-- change all of these to the name of the animation in your character's xml file
idle_xml_name = 'BA_Missingno_Idle0'
left_xml_name = 'BA_Missingno_Left0'
down_xml_name = 'BA_Missingno_Down0'
up_xml_name = 'BA_Missingno_Up0'
right_xml_name = 'BA_Missingno_Right0'

left_miss_xml_name = 'BA_Missingno_Left Miss0'
down_miss_xml_name = 'BA_Missingno_Down Miss0'
up_miss_xml_name = 'BA_Missingno_Up Miss0'
right_miss_xml_name = 'BA_Missingno_Right Miss0'

-- basically horizontal and vertical positions
x_position = 1900
y_position = 2350

-- scales your character (set to 1 by default)
xScale = 5.5
yScale = 5.5

-- invisible character (so basically if you wanna use the change character event, you need to make the second character invisible first)
invisible = true

-- pretty self-explanitory
name_of_character_xml = 'ba_missingno_assets'
name_of_character = 'missingno'
name_of_notetype = 'p-gray'

-- if it's set to true the character appears behind the default characters, including gf, watch out for that
foreground = true
playablecharacter = true -- change to 'true' if you want to flipX

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function onCreate()
	makeAnimatedLuaSprite(name_of_character, 'characters/' .. name_of_character_xml, x_position, y_position);

	addAnimationByPrefix(name_of_character, 'idle', idle_xml_name, 24, false);

	addAnimationByPrefix(name_of_character, 'singLEFT', left_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singDOWN', down_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singUP', up_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singRIGHT', right_xml_name, 24, false);

	addAnimationByPrefix(name_of_character, 'singLEFTmiss', left_miss_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singDOWNmiss', down_miss_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singUPmiss', up_miss_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singRIGHTmiss', right_miss_xml_name, 24, false);

	setProperty(name_of_character .. '.antialiasing', false);

	scaleObject(name_of_character, xScale, yScale);

	objectPlayAnimation(name_of_character, 'idle');
	addLuaSprite(name_of_character, foreground);

	if invisible == true then
		setPropertyLuaSprite(name_of_character, 'alpha', 0)
	end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		end
	end
end

-- I know this is messy, but it's the only way I know to make it work on both sides.
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);
		end
	end
end

local singAnims = {"singLEFTmiss", "singDOWNmiss", "singUPmiss", "singRIGHTmiss"}
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', missleftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', missleftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', missdownoffsets[1]);
			setProperty(name_of_character .. '.offset.y', missdownoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', missupoffsets[1]);
			setProperty(name_of_character .. '.offset.y', missupoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', missrightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', missrightoffsets[2]);
		end
	end
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation(name_of_character, 'idle');
		setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
		setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
	end
end

function onStepHit()
	if curStep == 2373 then
		doTweenX(name_of_character, name_of_character, -1, 0)
		doTweenAlpha(name_of_character, name_of_character, 0, 0.1)
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	if counter % 2 == 0 then
		objectPlayAnimation(name_of_character, 'idle');
		setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
		setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
	end
end