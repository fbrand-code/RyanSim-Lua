package.path = package.path .. ";../?.lua"
local Talkies = require("talkies")
local Obey = require("other")


function love.load()
  love.window.setTitle("RyanSim")
  -- The FontStruction “Pixel UniCode” (https://fontstruct.com/fontstructions/show/908795)
  -- by “ivancr72” is licensed under a Creative Commons Attribution license
  -- (http://creativecommons.org/licenses/by/3.0/)
  Talkies.font = love.graphics.newFont("assets/fonts/Pixel UniCode.ttf", 32)
  Talkies.font:setFallbacks(love.graphics.newFont("assets/fonts/JPfallback.ttf", 32)) -- Add font fallbacks for Japanese characters

  -- Audio from bfxr (https://www.bfxr.net/)
  Talkies.talkSound = love.audio.newSource("assets/sfx/typeSound.wav", "static")
  Talkies.optionOnSelectSound = love.audio.newSource("assets/sfx/optionSelect.wav", "static")
  Talkies.optionSwitchSound = love.audio.newSource("assets/sfx/optionSwitch.wav", "static")

  music = love.audio.newSource( 'assets/sfx/violademo1_09_MELODY_final.wav', 'static' )
  music:setLooping( true ) --so it doesnt stop
  music:play()

  stater = 0
  getswitch = 0
  wopen = 0
  jopen = 0
  sopen = 0
  ropen = 0
  hopen = 0
  bopen = 0

  wdone = 0
  hdone = 0
  sdone = 0
  jdone = 0
  rdone = 0
  bdone = 0

  --math.randomseed(os.time())
  --rand()

  player = {
	x = 400,
	y = 300,
	speed = 200
  }

  john = {
	x = 100,
	y = 200,
	speed = 200
  }

  johnn = {
	x = 1000,
	y = 400,
	speed = 200
  }

  eloo = {
	x = 520,
	y = 150,
	speed = 200
  }

  bozos = love.graphics.newImage("assets/bozos.png")
  elos = love.graphics.newImage("assets/elos.png")
  final = love.graphics.newImage("assets/final.png")
  hancocks = love.graphics.newImage("assets/hancocks.png")
  heart = love.graphics.newImage("assets/heart.png")
  johnnys = love.graphics.newImage("assets/johnnys.png")
  raphs = love.graphics.newImage("assets/raphs.png")
  sammys = love.graphics.newImage("assets/sammys.png")
  walts = love.graphics.newImage("assets/walts.png")
  bg = love.graphics.newImage("assets/bg.png")
  yaoi = love.graphics.newImage("assets/dtntm.png")
  


  -- Put some messages into the queue from anywhere in your codebase
  --Obey.sayHello()

  Obey.starter()

  -- Put some messages into the talkies queue
  --Talkies.say(
  --  "Johnny",
  --  "Typing sound is aligned with the text speed...",
  --  { textSpeed = "slow" }
  --)
  --Talkies.say(
  --  "Tutorial",
  --  "Here's some options:",
  --  {
  --    options={
  --      {"Red", function() red() end},
  --      {"Blue", function() blue() end},
  --      {"Green", function() green() end}
  --    }
  --  }

  --)
end

ryans = {}
ryans[1] = love.graphics.newImage("assets/ryans.png")
ryans[2] = love.graphics.newImage("assets/ryans1.png")
frame = 1
anim_speed = 0.3
anim_counter = 0
johnnycount = 0
johnstop = 200
elostart = 0
elocount = 0
elostop = 200
hooray = 0
wedone = 0
wedonee = 0
weshow = 0

function love.update(dt)
  if jdone == 1 and johnnycount < johnstop then
    john.x = john.x - dt * john.speed
    johnn.x = johnn.x - dt * johnn.speed
    johnnycount = johnnycount + 1 
  end
  if elostart == 1 and elocount < elostop then
    eloo.x = eloo.x + dt * eloo.speed
    elocount = elocount + 1
  end
  Talkies.update(dt)
  if love.keyboard.isDown('a') then 
    player.x = player.x - dt * player.speed
    anim_counter = anim_counter + dt
    if anim_counter >= anim_speed then
        anim_counter = 0
        frame = frame + 1
        if frame >= 3 then frame = 1
        end
      end
  elseif love.keyboard.isDown('d') then 
    player.x = player.x + dt * player.speed
    anim_counter = anim_counter + dt
    if anim_counter >= anim_speed then
        anim_counter = 0
        frame = frame + 1
        if frame >= 3 then frame = 1
        end
      end
  elseif love.keyboard.isDown('w') then 
    player.y = player.y - dt * player.speed
    anim_counter = anim_counter + dt
    if anim_counter >= anim_speed then
        anim_counter = 0
        frame = frame + 1
        if frame >= 3 then frame = 1
        end
      end
  elseif love.keyboard.isDown('s') then 
    player.y = player.y + dt * player.speed
    anim_counter = anim_counter + dt
    if anim_counter >= anim_speed then
        anim_counter = 0
        frame = frame + 1
        if frame >= 3 then frame = 1
        end
      end
  end
  if rdone == 1 and jdone == 1 and bdone == 1 and sdone == 1 and hdone == 1 and wdone == 1 and wedone == 0 then
    wedone = 1
    Obey.done()
  end
end

function love.draw()
  love.graphics.draw(bg, 0, 0)
  --love.graphics.print(elostart)
  --  "Talkies demo" ..
  --  "'spacebar': Cycle through messages \n" ..
  --  "'c': Clear all messages \n" ..
  --  "'m': Add a single message to the queue \n", 10, 100)
  --love.graphics.draw(bozos, 0, 0)
  love.graphics.draw(walts, 550, 450,0,0.5,0.5)
  love.graphics.draw(johnnys, john.x, john.y,0,0.5,0.5)
  love.graphics.draw(bozos, johnn.x, johnn.y,0,0.5,0.5)
  love.graphics.draw(hancocks, 100, 400,0,0.5,0.5)
  love.graphics.draw(sammys, 600, 300,0,0.5,0.5)
  love.graphics.draw(elos, eloo.x, eloo.y,0,0.5,0.5)
  love.graphics.draw(raphs, 650, 150,0,0.5,0.5)
  if wdone == 1 then love.graphics.draw(heart, 550, 450,0,0.5,0.5) end
  if rdone == 1 then love.graphics.draw(heart, 650, 150,0,0.5,0.5) end
  if sdone == 1 then love.graphics.draw(heart, 600, 300,0,0.5,0.5) end
  if bdone == 1 then love.graphics.draw(heart, 340, 400,0,0.5,0.5) end
  if hdone == 1 then love.graphics.draw(heart, 100, 400,0,0.5,0.5) end
  love.graphics.draw(ryans[frame],player.x, player.y,0,0.5,0.5)
  if hooray == 1 then love.graphics.draw(yaoi) end
  Talkies.draw()
  if weshow == 1 then love.graphics.draw(final) end
end

function love.keypressed(key)
  --if key == "c" then Talkies.clearMessages()
  --elseif key == "m" then Talkies.say("Title", {"Message one", "two", "and three..."}, {onstart=function() rand() end})
  if stater == 0 then
    if key == "escape" then love.event.quit()
    elseif key == "space" then
      if wedonee == 1 then love.event.quit() end
      Talkies.onAction()
      if wedonee == 1 then love.event.quit() end
      --walt
      if player.x < 600 and player.x > 500 and player.y < 500 and player.y > 400 and wopen == 0 then
        Obey.walt()
      elseif player.x < 200 and player.x > 0 and player.y < 300 and player.y > 100 and jopen == 0 then
        Obey.johnny()
      elseif player.x < 500 and player.x > 300 and player.y < 500 and player.y > 300 and bopen == 0 and jdone == 1 then
        Obey.bozo()
      elseif player.x < 700 and player.x > 500 and player.y < 400 and player.y > 200 and sopen == 0 then
        Obey.sammy()
      elseif player.x < 200 and player.x > 0 and player.y < 500 and player.y > 300 and hopen == 0 then
        Obey.hancock()
      elseif player.x < 700 and player.x > 450 and player.y < 250 and player.y > 50 and ropen == 0 then
        Obey.elo()
      end
    elseif key == "return" then 
      Talkies.onAction()
--      if getswitch == 1 then
--        stater = 1 
--        getswitch = 0
--      end
    elseif key == "up" then Talkies.prevOption()
    elseif key == "down" then Talkies.nextOption()
    end
  end

end



-- DEMO FUNCTIONS ===========================================================================
--function rand()
--  love.graphics.setBackgroundColor(math.random(), math.random(), math.random())
--end

--function red()
--  love.graphics.setBackgroundColor(1,0,0)
--  Talkies.say("Hey!", "You picked Red!")
--  moreMessages()
--end

--function blue()
--  love.graphics.setBackgroundColor(0,0,1)
--  Talkies.say("Hey!", "You picked Blue!")
--  moreMessages()
--end

--function green()
--  love.graphics.setBackgroundColor(0,1,0)
--  Talkies.say("Hey!", "You picked Green!")
--  moreMessages()
--end

--function moreMessages()
--  Talkies.say(
--    "Message queue",
--    "Each message is added to a \"message queue\", i.e. they're presented in the order that they're called. This is part of the design of Möan.lua",
--    {
--      onstart=function() rand() end
--    }
--  )
--  Talkies.say(
--    "UTF8 example",
--    "アイ・ドーント・ノー・ジャパニーズ・ホープフリー・ジス・トランズレーター・ダズント・メス・ジス・アップ・トゥー・マッチ"
--  )
--  Obey.sayGoodbye()
--end
