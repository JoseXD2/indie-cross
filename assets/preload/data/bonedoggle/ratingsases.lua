local resetHideHud = false

function onCreatePost()
	resetHideHud = not hideHud;
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
	end
	precacheImage('ratings/vanilla/shit');
	precacheImage('ratings/vanilla/bad');
	precacheImage('ratings/vanilla/good');
	precacheImage('ratings/vanilla/sick');
	precacheImage('ratings/vanilla/num');
end	

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote and resetHideHud and getProperty('combo') then
		strumTime = getPropertyFromGroup('notes', id, 'strumTime');
		local rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'));
		local downscrolloffset = 0;
		if downscroll then
			downscrolloffset = 10;
		end  
		makeLuaSprite('lastRating', 'ratings/vanilla/' .. rating, screenWidth * 0.35 - -42 + downscrolloffset + 500 , screenHeight / 2 - 120 - downscrolloffset * 3 );
		setObjectCamera('lastRating','game');
		setProperty('lastRating.velocity.y', math.random(-140, -160));
		setProperty('lastRating.velocity.x', math.random(-10));
		setProperty('lastRating.acceleration.y', 200);
		runTimer('lastRatingTimer', crochet / 900);
		setScrollFactor('lastRating', 1, 1);
		scaleObject('lastRating', 0.7, 0.7);
		updateHitbox('lastRating');
		addLuaSprite('lastRating', false);
		local combo = getProperty('combo');
		if combo >= 0 then
			for i=2,0,-1 do
				local tag = 'combodigit' .. i;
				makeLuaSprite(tag, 'ratings/vanilla/num' .. math.floor(combo / 10 ^ i % 10) , screenWidth * 0.35 - -105 - i * 43 + downscrolloffset + 500, screenHeight / 2 + -0 - downscrolloffset * 3 );
				setObjectCamera(tag,'game');
				setProperty(tag .. '.velocity.y', math.random(-140, -160));
				setProperty(tag .. '.velocity.x', math.random(-5, 5));
				setProperty(tag .. '.acceleration.y', math.random(200, 300));
				runTimer(tag .. 'Timer', crochet / 500);
				setScrollFactor(tag, 1, 1);
				scaleObject(tag, 0.5, 0.5);
				updateHitbox(tag);
				addLuaSprite(tag, true);
			end
		end
	end
end

function getRating(diff)
	diff = math.abs(diff);
	if diff <= getPropertyFromClass('ClientPrefs', 'badWindow') then
		if diff <= getPropertyFromClass('ClientPrefs', 'goodWindow') then
			if diff <= getPropertyFromClass('ClientPrefs', 'sickWindow') then
				return 'sick';
			end
			return 'good';
		end
		return 'bad';
	end
	return 'shit';
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'lastRatingTimer' then
		doTweenAlpha('lastRatingAlpha', 'lastRating', 0, 0.2);
	elseif tag == 'combodigit0Timer' then
		doTweenAlpha('combodigit0Alpha', 'combodigit0', 0, 0.2);
	elseif tag == 'combodigit1Timer' then
		doTweenAlpha('combodigit1Alpha', 'combodigit1', 0, 0.2);
	elseif tag == 'combodigit2Timer' then
		doTweenAlpha('combodigit2Alpha', 'combodigit2', 0, 0.2);
	end
end

function onTweenCompleted(tag)
	if tag == 'lastRatingAlpha' then
		removeLuaSprite('lastRating', true);
	elseif tag == 'combodigit0Alpha' then
		removeLuaSprite('combodigit0', true);
	elseif tag == 'combodigit1Timer' then
		removeLuaSprite('combodigit1', true);
	elseif tag == 'combodigit2Timer' then
		removeLuaSprite('combodigit2', true);
	end
end

function onGameOver()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end
function onEndSong()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end
function onPause()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end
function onResume()
	if resetHideHud then
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
	end
end
function onUpdate()
	if resetHideHud and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
end
