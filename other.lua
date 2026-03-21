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
  Talkies.say( "Ryan",{
      "But should I even say that anymore? I don't know...",
      "Ever since the sky fell, being a priest has become harder and harder...",
      "...?",
      "Oh, I feel a presence...",
      "I ought to introduce myself!",
      "I am Ryan Virgil, a priest working at Paradiso church.",
      "And Aaliyah day is coming up soon. Very soon, even.",
      "Unfortunately, all the actors are having trouble getting ready, and we only have so much time before the show.",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say("Ryan","Can you help me get them all ready?",
    {
      image=avatar,
      talkSound=blop,
      options={
        {"Yes!", function() yes() end},
        {"No...", function() no() end},
      }
    }
  )
end

function yes()
  Talkies.say("Ryan", "Thank you! -- When you're close to the actor, just press Space! I think that's a common piece of scripture...",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    })
  getswitch = 1
end

function no()
  Talkies.say("Ryan", "Huh? But... please...? At least just for a little while! -- When you're close to the actor, just press Space! I think that's a common piece of scripture...",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    })
  getswitch = 1
end

function Obey.johnny()
  jopen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  blop2 = love.audio.newSource("assets/sfx/johnny.wav", "static")
  avatar2 = love.graphics.newImage("assets/johnny.png")
  Talkies.say( "Ryan",{
      "(That is Johnny Abraham. He's the mascot of the ever popular Star Station, and I've seen a lot of people with his merchandise!)",
      "(As much as I do appreciate his work, I do wonder how he became their mascot in the first place. He's... not the brightest, innit?)",
      "Mr. Abraham! How are the preparations going?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Johnny",{
      "I need a life-size standee of myself!",

    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "...What?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      textSpeed="slow"
    }
  )
  Talkies.say( "Johnny",{
      "If I don't find one, I won't be able to appear in the play!",
      "You gotta help me out Ryan!",

    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "I. I-I... -- I do have something, maybe, from some old visitors of the church who were fans of you, but...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      options={
        {"Why do you need that? You're here now, aren't you?", function() why() end},
        {"Nevermind. Whatever the Star Station says, goes.", function() nvm() end},
      }
    }
  )
end

function why()
  Talkies.say("Johnny", "I am! But I'm not here! Ya know?",
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    })
  Talkies.say( "Ryan",{
      "I don't know...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say("Johnny", "You'll get it!",
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    })
  jdone = 1
end

function nvm()
  Talkies.say("Johnny", "Thanks Ryan! You're the least bad priest I've ever met!",
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    })
  Talkies.say( "Ryan",{
      "Th-That's... quite the compliment...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  jdone = 1
end

function Obey.bozo()
  bopen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  blop2 = love.audio.newSource("assets/sfx/johnny.wav", "static")
  avatar2 = love.graphics.newImage("assets/bozo.png")
  Talkies.say( "Ryan",{
      "(Oh! I was wondering when he'd come around... -- That is the actor for Joseph. He's a bit of a mystery, but I can admit that he's quite beautiful... -- Please don't tell my uncle I thought that!!!)",
      "Hello, uh... Bozo...? Are you ready for the play?",
      "(I feel bad about calling him such a silly name, but that's what he wrote in the signup sheet...)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Bozo",{
      "... -- ... -- Yes.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false,
      options={
        {"", function() gimmeb() end},
      }
    }
  )
end

function gimmeb()
  bdone = 1
end

function Obey.elo()
  ropen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  blop2 = love.audio.newSource("assets/sfx/raph.wav", "static")
  avatar2 = love.graphics.newImage("assets/raph.png")
  blop3 = love.audio.newSource("assets/sfx/elo.wav", "static")
  avatar3 = love.graphics.newImage("assets/elo.png")
  Talkies.say( "Ryan",{
      "(Oh Creator... these two I'm the most nervous talking to. Of course first is the new Creator, ELO. She apparently defeated her father, the old Creator, and is taking his role as god...)",
      "(But there are so many changes in Viola and the world that it's hard to imagine I'm facing a goddess right now. She's just talking normally... -- T-To Raphael Abraham.)",
      "(He's the Shepherd for the local Sheol, but he's also... b-b-beautiful... i-immaculate... s-scrumptuous... -- He had his coronation here, and... -- hh... -- hhhh...)",
      "(I-I can't be distracted! Focus, Ryan! You took an oath of chastity!!!)",
      "H-H-Hello, do either of you need help getting ready...?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "ELO",{
      "So you don't know where Coeur could be at all? I thought he would go back to Diah.",
    },
    {
      image=avatar3,
      talkSound=blop3,
      typedNotTalked=false
    }
  )
  Talkies.say( "Raphael",{
      "I'm sure he would, but need I remind you that Diah has been MIA ever since he blew a hole in Sheol's roof. -- Wherever that little virus is now, I hope he stays gone.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "ELO",{
      "... -- And you're telling me you never searched for Diah? You, the once perfect Shepherd?",
    },
    {
      image=avatar3,
      talkSound=blop3,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "(The Creator is so measured... She's known for being able to understand others with amazing accuracy, and with an insanely smart mind, she's an utter monster to deal with in a battle of wits...)",
      "(R-Raphael is truly brave... hhhh...)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Raphael",{
      "Tch. You and your clever words. I DID search for him, I'll have you know, and he wasn't there. The signature he usually has led to a dead end.",
      "However he escaped my grasp, I have a mind to suppose it was with help. And with SMART help, too. Dangerous help.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "ELO",{
      "... -- Oh, hello.",
    },
    {
      image=avatar3,
      talkSound=blop3,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "(WAIT! I'm eavesdropping on a very important conversation between the Creator and a Shepherd! Am I going to be smited for this!??)",
      "I-I-I'm sorry, I can go, I just-",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "ELO",{
      "... -- No, it's fi-",
    },
    {
      image=avatar3,
      talkSound=blop3,
      typedNotTalked=false
    }
  )
  Talkies.say( "Raphael",{
      "Look at you, ELO. Making my dearest priest nervous. Go on, get dressed in your stupid little manger. I need help from them.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "ELO",{
      "... -- Uh-huh.",
    },
    {
      image=avatar3,
      talkSound=blop3,
      typedNotTalked=false,
      options={
        {"", function() Obey.elo2() end},
      }
    }
  )
end

function Obey.elo2()
  eloleave()
  Talkies.say( "Ryan",{
      "(N-No! Don't leave me alone with- -- Wait, did he just call me his-)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Raphael",{
      "Hello, my dearest priest~ -- I need your help. I need to draw on a little beard, but there's no mirror around. Could you draw it on for me?",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false,
      options={
        {"Yes.", function() yes1() end},
        {"YES.", function() yes1() end},
      }
    }
  )
end

function eloleave()
  elostart = 1
end

function yes1()
  cmon()
  Talkies.say("Ryan", {"(Creator... Creator please help me...)",
    "I-Is this what you wanted...?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
    }
  )
  Talkies.say( "Raphael",{
      "Yes, this is exactly what I want~ -- Dearest priest, you really ought to be careful. You're just a little too gullible...",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say("Ryan", {"Wh-What do you mean...?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
    })
  Talkies.say( "Raphael",{
      "Nothing~",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "O-Okay...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      options={
        {"", function() cmonn() end},
      }
    }
  )
  rdone = 1
end

function cmon()
  hooray = 1
end

function cmonn()
  hooray = 0
end

function Obey.walt()
  wopen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  avatar2 = love.graphics.newImage("assets/walt.png")
  blop2 = love.audio.newSource("assets/sfx/walt.wav", "static")
  Talkies.say( "Ryan",{
      "(This is Walt Haley. Before the sky fell, we worked together both at his father's soup kitchen and at my uncle's church. He's a very kind soul, I have to admit that I somewhat look up to him...)",
      "Hello, Mr. Haley! It's nice to see you again. How has your father been?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Walt",{
      "Hii, Ryan! He's been good. Ever since the sky fell, the soup kitchen has really been booming!",
      "While everyone has been mostly okay thanks to all the Sheol people helping out, the houses weren't so lucky...",
      "But that's alright! There's plenty of housing if we really work together. And everyone is helping with rebuilding!",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "Ahh, I hope everyone we're keeping at the church helps lessen the load. The church is built to care for a lot of refugees, but with all four cities in disarray...",
      "Oh, but now isn't the time to talk about that! Are you ready for the play?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Walt",{
      "Uhmm...",
      "I am, but... the costume I have to be the third wise man is a little big...",
      "The helmet keeps covering my eyes!",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false,
      options={
        {"Just wear it anyway?", function() wear() end},
        {"Switch with someone else?", function() switchh() end},
      }
    }
  )
end

function wear()
  Talkies.say("Walt", "Wear it anyway... I guess I could! As long as I have Hancock to guide me around, I can still say my lines just fine!",
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    })
  wdone = 1
end

function switchh()
  Talkies.say("Walt", "Hmm... Oh, I'll try to switch with Hancock! Maybe his hat is a little smaller?",
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    })
  wdone = 1
end


function Obey.sammy()
  sopen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  blop2 = love.audio.newSource("assets/sfx/sammy.wav", "static")
  avatar2 = love.graphics.newImage("assets/sammy.png")
  Talkies.say( "Ryan",{
      "(This is Samantha Paulissen, the detective of the Star Station. She's very strict and to the point, but recently...)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Sammy",{
      "DAMMIT! I told them not to call me today, what do they need now!?",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "(She's been busy rebuilding the government after the sky fell. She's reasonably quite antsy with such a big job...)",
      "Ms. Paulissen? Can I help with anything?",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Sammy",{
      "Ugh, thanks, Ryan, but I'm not so sure... -- Well, there is one thing.",
      "Here, take my phone. If anyone calls, tell them to piss off. I'm taking a break day.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "B-But I- I can't say such vulgar words. I'm a priest!",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Sammy",{
      "It's a request from a friend of your new Creator. Just try it.",
      "Look, it's already ringing!",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "???",{
      "Hello!? Ms. Paulissen!? -- We have such an emergency, how are we going to figure out fishing rights!? There's fishermen practically busting down my door!",
    },
    {
      talkSound=blop2,
      typedNotTalked=false,
      options={
        {"Piss off!", function() p() end},
        {"Please don't call her today...", function() please() end},
      }
    }
  )
end

function p()
  Talkies.say("???", "What!? I never...!!!",
    {
      talkSound=blop2,
      typedNotTalked=false
    })
  Talkies.say( "Sammy",{
      "Heh. Good job, priest.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  sdone = 1
end

function please()
  Talkies.say("???", "Oh, but please, just for a little while! I promise I won't be long! This is your job, you know!?",
    {
      talkSound=blop2,
      typedNotTalked=false
    })
  Talkies.say( "Ryan",{
      "I-If I must... -- Yes, yes, then you should... -- I don't think that's right... -- Yes, actually... -- No, he should not have... -- Are you sure? -- No, no...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Sammy",{
      "Well, that wasted a lot of time, but you handled it well. Thanks anyway, priest.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "I have no idea if what I said was right... oh Creator...",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  sdone = 1
end

function Obey.hancock()
  hopen = 1
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/ryan.png")
  blop2 = love.audio.newSource("assets/sfx/hancock.wav", "static")
  avatar2 = love.graphics.newImage("assets/hancock.png")
  Talkies.say( "Ryan",{
      "(That is Chief Hancock, of the Star Station. He's quite nice the few times he's come to my church. In fact, he and his wife were married here. But he's still so scary...)",
      "H-Hello, Chief Hancock. Do you need any help?",
      "(Biscuits! I stuttered!)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    }
  )
  Talkies.say( "Hancock",{
      "Hello, Ryan. -- Nothing is wrong, but I'm worried how the virtued will see this story... Should we be teaching them Violanite when so much of it was fabricated?",
      "...Hohoho, I'm sorry. I'm just so worried...",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  Talkies.say( "Ryan",{
      "(That's right... Chief Hancock has a new job now, taking care of those that fell from the sky and helping them acclimate to life here. He's also started an orphanage for lost children.)",
      "(He's also deeply religious, like myself. I'm glad he's trying to parse this difficult new situation with Viola as I am. -- I'm a priest, I should ease his worries!)",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      options={
        {"It's just entertainment!", function() entertain() end},
        {"It's important to start on the right hoof!", function() hoof() end},
      }
    }
  )
end

function entertain()
  Talkies.say("Ryan", "I think even if things are hard right now, the story of the Vativity should at least entertain others. Everyone has been so stressed, a lovely story can still be enjoyed even with the religious moral.",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    })
  Talkies.say( "Hancock",{
      "Yes... You're right, Ryan. Even if someone doesn't believe, the Vativity is a sweet story. I just hope everyone can see that...",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  hdone = 1
end

function hoof()
  Talkies.say("Ryan", "While Viola may be changing quite a lot, that doesn't mean it isn't right. We have to help everyone see the light of our religion no matter what.",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false
    })
  Talkies.say( "Hancock",{
      "Hmm... If you believe so, Ryan. This is your livelihood, after all.",
    },
    {
      image=avatar2,
      talkSound=blop2,
      typedNotTalked=false
    }
  )
  hdone = 1
end

function Obey.sayHello()
  blop = love.audio.newSource("assets/sfx/talk.wav", "static")
  avatar = love.graphics.newImage("assets/Obey_Me.png")

  Talkies.say("Talkies.lua", "Hello World!", {
    image=avatar,
    talkSound=blop,
    typedNotTalked=false,
    textSpeed="slow"
  })
  Talkies.say( "Tutorial",
    {
      "Talkies is a simple to use messagebox library, it includes;",
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

function Obey.sayGoodbye()
  Talkies.say(
    "Goodbye",
    "See ya around!",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      oncomplete=function() rand() end,
      titleColor = {1, 0, 0}
    }
  )
end

function Obey.done()
  Talkies.say( "Ryan",{
      "That's everyone, it seems. -- We ought to go now... thank you, presence!",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      options={
        {"", function() finisher() end},
      }
    }
  )
end

function finisher()
  weshow = 1
  Talkies.say( "",{
      "rthrth",
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      options={
        {"", function() wesodone() end},
      }
    }
  )
end

function wesodone()
  wedonee = 1
  love.event.quit()
end


return Obey
