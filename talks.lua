local Talkies = require("talkies")

local Obey = {}
local avatar;
local blop

function Obey.starter()
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")

  Talkies.say("Ryan", "Oh, Creator...", {
    image=avatar,
    talkSound=blop,
    typedNotTalked=false,
    textSpeed="slow"
  })
  Talkies.say( "Ryan",
    {
      "Oh, Creator...",
      "--But should I even say that anymore? I don't know..."
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      textSpeed="slow"
    }
  )
end

function Johnny.speaker()
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/johnny.png")

  Talkies.say("Talkies.lua", "Hello World!", {
    image=avatar,
    talkSound=blop,
    typedNotTalked=false,
    textSpeed="slow"
  })
  Talkies.say( "Johnny",
    {
      "Oooh. Hi, priest!!",
      "Multiple choices,-- UTF8 text,-- Pauses,-- Onstart/OnMessage/Oncomplete functions,-- Complete customization,-- Variable typing speeds amongst other things."
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      onstart = function(dialog)
        print("are we showing:", dialog:isShown())
        rand()
      end,
      onmessage = function(dialog, left)
        print(left .. " messages left in the dialog, is showing:", dialog:isShown())
      end,
      oncomplete = function(dialog)
        print("are we still showing:", dialog:isShown())
      end
    }
  )
end