class Chapter2
    # All chapters will have this data.
    attr_reader :npc1 # The name of the chapter, duh!
    attr_reader :options # The options, the player chooses!█░░█░█░█
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize()
        @npc1 = ("Samos")
        @npc1_voice = ("like a creaking old oak")
        @chapter_intro = ("When the morning breaks, many voices from all around are all saying similar things, how cold the night was, they thought they saw somthing, a man went missing in his room because he left it unlocked, a strange hole appearing in the roof of the inn. You are sitting out the front of the inn while feeding a campfire you made to warm yourself up from the cold of last night, a man waring strange attire a flowing robe with ornaments and strange letters walks over to you Unknown:'Do you mind if I sit?' In a voice you can only describe as #{@npc1_voice} as he gestures to a space next to the fire, he sits down without waiting for a response, #{@npc1} 'My name is #{@npc1}. I know what _░░░█░█ you, #{player.name}. However I need your help, if you do I can help you, if you wish to see me again go to the ruins in the northern forrest'  you glace to the fire for a moment as it crackles then look back, and his gone.") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("")
        @options.push("")
        @options.push("")
        @options.push("")
        @options.push("")
        
        @consequences = []
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        
        
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

    def get_player_choice()
            print "Enter your choice: "
            players_choice = gets.to_i - 1 # 0->3
            puts @consequences[players_choice]
            return players_choice
            
    end
    
        # All chapters will run perform method at some point possibly multiple times!
    def perform(player)
            print_intro(player.name)
            print_options
            players_choice = get_player_choice
            

            case players_choice
                when 0
                    player.spend_gold(10)
                    player.spend_time(1)
                when 1
                    player.spend_time(1)
                when 2
                    
                when 3

                when 4
                player.secret_found(10)
            end
    end
    

end