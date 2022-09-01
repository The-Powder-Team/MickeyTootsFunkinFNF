curentVersion = 0;

-- The quotes are from the Toots Club server lol
local Quotes = {
    "We make videos for all to anjoy.",
    "#bringbackmickeytoots",
    "No Cyborg 3.0?",
    "Thanks to Heli Pro Gamer for the fix!",
    "No OpenFL?",
    "Sprites by Bingus, Animated by TheAnimateMan",
    "This is YOUR Daily Does of Internet",
    "I've over dosed on ketamine and I'm going to die",
    "MICKEY TOOTS QUICK GET THE SPONGE VIRUS VACCINE",
    "Inki, for the LAST time, Psych Engine is not a virus."
}

function onCreate()
   bit = string.gsub(version,"%.","")

   curentVersion = tonumber(bit)
end


function onCreatePost()
    makeLuaText('songText', songName .. ' - ' .. getProperty('storyDifficultyText') .. ' | Tootsies Engine (PE 0.6.2+) | ' .. Quotes[getRandomInt(1, 11)], 0, 2, 701);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    setObjectCamera('songText', 'camHUD');
    addLuaText('songText');
end