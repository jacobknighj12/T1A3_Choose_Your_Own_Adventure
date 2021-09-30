class Chapter1
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    attr_reader :name #you?
    
    def initialize(player)
        
        # name = player_name() SUDDENLY PLAYER NAME STOPS WORKING I DONT KNOW WHY IT WAS LITTERALLY JUST WORKING AND BEFORE THEN IT WASENT WORKING BUT NOW ITS NOT WORKING AGAIN AND ITS AN ISSUE
        # new_game_plus = " *#___=  -%%&* %% ##@1 //2|..\."
        
        @code = ("this shouldent be here")
        @npc1 = ("Bob the barkeep")
        @npc1_voice = ("In his muffled tone")
        @chapter_intro = ("Unknown:'Hey, you alright #{player.name}?'Your vision clears as you look around the room there is a man you recognize in front of you across the bar counter, you feel as though he has been serving you drinks for the past hour what was his name again? E!#2_^^& or somthing his the barkeeper so I will just call him that, #{@npc1}. Around you there are patrons thoughout the bar, you can't recognize any others, its loud and crowded it seems to be a buisy time. 'Well, #{@npc1} #{@npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area, you may want to finish your drink and leave soon.'") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("Ask for a drink")
        @options.push("Ask about the night terrors")
        @options.push("Get up, thank #{@npc1} for the drinks but you have to go")
        @options.push("Try to remember what you were doing before this")
        @options.push("Coffee please" + @code)#+ new_game_plus it didnt really work and i dont want to make it too obvious█░░█░█░█
        
        @consequences = []
        @consequences.push("You spend some more time drinking and lose time after a while #{@npc1} speaks up 'I dont think you want another for tonight, here; take your room keys and go to sleep for tonight.' He says somthing after you get up but you cant understand it and continue up to your room.")
        @consequences.push("'The night terrors. *#{@npc1}* strokes his beard, there have been plenty of storys of people going missing from their beds at night if they dont lock the door. Never found any of the missing people so far heard a description of it once ho'ever, its been said it has a face of fishing hooks with no eyes makes me shrink to think 'bout.' after talking for a while #{@npc1} tells you to head back to your room and to be safe be absoultely sure you lock your door.")
        @consequences.push("'Wait, your room key you already paid for it 'member?' he hands you your key and looks strangely at you, you walk off upstairs to your room")
        @consequences.push("Haze pushes into your mind, it hurts to think you feel like you paid for your drinks and room but then slowly started feeling as if somthing was starting to.. sit on your shoulder? You ask for your room key from #{@npc1} and head up the stairs to your room. #{@npc1} says somthing after you get up but you cant understand it and continue up to your room.")
        @consequences.push("Haze pushes into your mind, it hurts to think the words you expected to come from your mouth dont feel like your own. Something feels different. 'You aight there buddy? #{@npc1} says #{@npc1_voice} *You look up from holding your head to see concern in the old mans face* 'ere, yer key go to bed and take rest for the night, remember to lock your door.' ")
        
        
    end
    
    def print_intro(player_name)
        # if player.is_new_game_plus == true #WHY AINT THIS WORKIN?
        #     @code = " I need to fuel up to continue coding"
        # else
        #     @code = " #___=  -%%&* %% ##@1 //2|..\."
        # end
            puts "Chapter 1"
            
            # puts "#{player_name} sees a #{@name}." may use this at some point?
            # puts @art same?
            puts @chapter_intro
    end

    def print_options()
            options_index = 0
            for option in @options
                puts "#{options_index + 1}. #{option}"
                options_index += 1
    end
        end

    def get_player_choice()
        
            print "Enter your choice: "
            players_choice = gets.to_i - 1 # 0->3
            
            puts @consequences[players_choice]
            return players_choice
            
    end
    
        # All chapters will run perform method at some point possibly multiple times!
    def perform(player)
        
        # if player.check_time <= 2 WHY ISNT THIS WORKING
        #     p new_game_plus_
        #     new_game_plus = " I will need it for this game"
        # else
        #     p new_game_plus
        #     new_game_plus = "*#___=  -%%&* %%##@1////...."
        # end
        if player.check_hp != 100
          puts  Rainbow("You feel bruises and cuts on your body but dont remember getting them, whats going on...").yellow
        end
            print_intro(player.name)
            print_options
            players_choice = get_player_choice
            

            case players_choice
                when 0
                    player.spend_gold(10)
                    
                    player.lock_door(false)
                    
                when 1
                    
                    player.lock_door(true)
                   
                when 2
                    player.lock_door(true)
                   
                when 3
                    player.lock_door(false)
                when 4
                player.secret_found(10)
                player.lock_door(true)
                
            end
            
    end
    
end