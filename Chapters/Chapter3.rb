class Chapter3
    # All chapters will have this data.
    attr_reader :npc1 # The name of the chapter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize()
        @npc1 = ("
            ▄▀▀█▄▄▄▄  ▄▀▀▄ ▀▄  ▄▀▀▀█▀▀▄  ▄▀▀█▀▄    ▄▀▀▀█▀▀▄  ▄▀▀▄ ▀▀▄ 
            ▐  ▄▀   ▐ █  █ █ █ █    █  ▐ █   █  █  █    █  ▐ █   ▀▄ ▄▀ 
              █▄▄▄▄▄  ▐  █  ▀█ ▐   █     ▐   █  ▐  ▐   █     ▐     █   
              █    ▌    █   █     █          █        █            █   
             ▄▀▄▄▄▄   ▄▀   █    ▄▀        ▄▀▀▀▀▀▄   ▄▀           ▄▀    
             █    ▐   █    ▐   █         █       █ █             █     
             ▐        ▐        ▐         ▐       ▐ ▐             ▐     ")
        @npc1_voice = ("Can only be described as
            A8D9__█░░█░█░█_D1C2H█░█░█9I1D█░░█░░9J9H3E0")
        @chapter_intro = ("") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("fight one at a time with your knife")
        @options.push("Tear some their light out of their bodys(10 mana required)")
        @options.push("Tear 10's of lights out of their bodys(50 mana required)") 
        @options.push("Tear 100's of lights out of their bodys(320 mana required)")
        @options.push("Tear 1000's of lights out of their bodys(1000 mana required)")
        
        @consequences = []
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        
        
    end
    # Well, #{player.name} #{@npc1} #{npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area,you may want to finish your drink and leave soon.
    def print_intro(player_name)

            puts "THIS IS THE END for now"
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