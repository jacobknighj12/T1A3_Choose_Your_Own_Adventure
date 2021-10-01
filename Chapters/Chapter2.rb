class Chapter2
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!█░░█░█░█
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize(player)
        
        @npc1 = ("Samos")
        @npc1_voice = ("like a creaking old oak")
        @chapter_intro = ("When the morning breaks, many voices from all around are all saying similar things, how cold the night was, they thought they saw something, a man went missing in his room because he left it unlocked, a strange hole appearing in the roof of the inn. You are sitting out the front of the inn while feeding a campfire you made to warm yourself up from the cold of last night, a man waring strange attire a flowing robe with ornaments and strange letters walks over to you Unknown:'Do you mind if I sit?' In a voice you can only describe as #{@npc1_voice} as he gestures to a space next to the fire, he sit's down without waiting for a response, #{@npc1} 'My name is #{@npc1}. I know what _░░░█░█ you, #{player.name}. However I need your help, if you do I can help you, if you wish to see me again go to the ruins in the northern forest'  you glace to the fire for a moment as it crackles then look back, and his gone. 'I'm not sure whats up with that man, but I need to find out whats going on with me I keep feeling weirder every moment.'") 
        
        
        @options = []
        
        @options.push("Go out to the north forests ruins.")
        @options.push("Ask around if anyone saw the night terror and attempt to find where it went.")
        @options.push("Hold your hand out and attempt to recreate the power you felt recently(Mana)")
        @options.push("'Damn why do I feel like I have been here before'")
        @options.push("Go out and buy some things to patch your wounds")
        
        @consequences = []
       
        
        @consequences.push("You dont want to waste any time here, pushing forwards to the north.")
        @consequences.push("After spending some time walking around talking to others and speculating on rumours that you gathered one of the townspeople tells you that they saw a large shadow heading north around the time everyone was talking about, are #{@npc1} issue linked with the creature? The town notice board has a reward for any of those brave enough to investigate you can claim 1/4 beforehand to use to prepare for the investiagtion, currently being held by the inn. Before leaving you decided that you may as well take the investigation deposit before heading out. You decide it's time to leave and find out")
      
        @consequences.push("you find a quiet place then, holding out your hand and reimagining the feeling you felt before. While doing this you see a glow from your chest, you dare not touch it, you feel as though you have gained more understanding of this power.")
      
        @consequences.push("You ponder on this thought for a moment but, still feeling the urgency of going north you head that direction.")
      
        @consequences.push("You go out to try and find somwhere like a herbalists open to get some basic supplies to fix yourself up, fortunately.(1 gold per hp healed)")
      
        
        
    end
    # Well, #{player.name} #{@npc1} #{npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area,you may want to finish your drink and leave soon.
    def print_intro(player_name)

            puts "Chapter 2"
            # puts "#{player_name} sees a #{@name}." may use this at some point?
            # puts @art same?
            puts @chapter_intro
            puts "What a strange man."
    end

    def print_options()
            options_index = 0
            for option in @options
                puts "#{options_index + 1}. #{option}"
                options_index += 1
    end
        end

    def get_player_choice(player)
            print "Enter your choice: "
            players_choice = gets.to_i - 1 # 0->3
            while players_choice == 2 #-1 here from each ajusted number
                if player.check_mana == 0
                puts "you dont have the requirements for this (Mana)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
            while players_choice == 3 #-1 here from each ajusted number
                if player.is_new_game_plus == false
                puts "you dont have the requirements for this (H█░l░█░l█░█p)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
            while players_choice == 4 #-1 here from each ajusted number
                if player.check_gld == 0
                puts "you dont have the requirements for this (1 gold)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                elsif player.check_hp >= player.max_hp
                puts "you dont have the requirements for this (health is maxed!)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
            puts @consequences[players_choice]
            return players_choice
            
    end
    
        # All chapters will run perform method at some point possibly multiple times!
    def perform(player)
            print_intro(player.name)
            print_options
            players_choice = get_player_choice(player)
            

            case players_choice
                when 0
                    
                when 1
                    puts "Collected 50 gold"
                    player.gain_gold(50)
                    
                    
                when 2
                    player.gain_mana(50)
                when 3
                    
                    
                when 4
                    missing_hp = player.check_max_hp - player.check_hp
                    p missing_hp
                    if player.check_gld <= missing_hp
                        player.spend_gold(missing_hp)
                        player.heal_damage(missing_hp)
                    else
                        player.heal_damage(missing_hp)
                        player.spend_gold(missing_hp)
                    end
            end
    end
    

end