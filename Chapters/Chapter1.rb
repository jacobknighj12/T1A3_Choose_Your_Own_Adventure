class Chapter1
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    attr_reader :name #you?
    
    def initialize(player)
        @testing = true
        #testing values for comparison
        @locked_door_change = player.is_door_locked()
        @gold_change = player.check_gld()
        @npc1 = ("Bob the barkeep")
        @npc1_voice = ("In his muffled tone")
        @chapter_intro = ("Unknown:'Hey, you alright #{player.name}?'Your vision clears as you look around the room there is a man you recognize in front of you across the bar counter, you feel as though he has been serving you drinks for the past hour what was his name again? E!#2_^^& or something his the barkeeper so I will just call him that, #{@npc1}. Around you there are patrons thoughout the bar, you can't recognize any others, it's loud and crowded it seems to be a busy time. 'Well, #{@npc1} #{@npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area, you may want to finish up your drinking and leave soon.'") 
        @options = []
        @options.push("Ask for a drink")
        @options.push("Ask about the night terrors")
        @options.push("Get up, thank #{@npc1} for the drinks but you have to go")
        @options.push("Try to remember what you were doing before this")
        @options.push("Coffee please")#+ new_game_plus it didnt really work and i dont want to make it too obvious█░░█░█░█
        
        @consequences = []
        @consequences.push("You spend some more time drinking and lose time after a while #{@npc1} speaks up 'I dont think you want another for tonight, here; take your room keys and go to sleep for tonight.' He says something after you get up but you cant understand it and continue up to your room.")
        @consequences.push("'The night terrors. *#{@npc1}* strokes his beard, there have been plenty of storys of people going missing from their beds at night if they dont lock the door. Never found any of the missing people so far heard a description of it once ho'ever, it's been said it has a face of fishing hooks with no eyes makes me shrink to think 'bout.' after talking for a while #{@npc1} tells you to head back to your room and to be safe be absoultely sure you lock your door.")
        @consequences.push("'Wait, your room key you already paid for it 'member?' he hands you your key and looks strangely at you and before you leave his sight he says 'Be sure to lock your door!', you walk off upstairs to your room")
        @consequences.push("Haze pushes into your mind, it hurts to think you feel like you paid for your drinks and room but then slowly started feeling as if something was starting to.. sit on your shoulder? You ask for your room key from #{@npc1} and head up the stairs to your room. #{@npc1} says something after you get up but you cant understand it and continue up to your room.")
        @consequences.push("Haze pushes into your mind, it hurts to think the words you expected to come from your mouth dont feel like your own. Something feels different. 'You aight there buddy? #{@npc1} says #{@npc1_voice} *You look up from holding your head to see concern in the old mans face* 'ere, yer key go to bed and take rest for the night, remember to lock your door.' ")
    end
        def print_intro(player_name)
         puts "Chapter 1"
         puts word_wrap(@chapter_intro)
        end

        def print_options()
            options_index = 0
            for option in @options
                puts "#{options_index + 1}. #{option}"
                options_index += 1
            end
        end

    def get_player_choice(player)
            valid_input = false
            while !valid_input
            
            print "Enter your choice: "
            players_choice = gets.to_i - 1 # 0->3
            valid_input = players_choice >= 0 && players_choice < @options.length
                if !valid_input
                print "Error: user has provided an incorrect value. \n"
                end
            end
            puts word_wrap(@consequences[players_choice])
            return players_choice
    end
    
    def perform(player)
        
        if player.check_hp != 100
          puts  Rainbow("You feel bruises and cuts on your body but dont remember getting them, whats going on...").yellow
        end
            print_intro(player.name)
            print_options
            players_choice = get_player_choice(player)
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
            else
                # puts "Error: user has provided an incorrect value, please enter your option."
                # players_choice = get_player_choice(player)
                # return players_choice
            end
            
    end
    
end