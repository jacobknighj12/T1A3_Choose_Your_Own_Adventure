class Chapter1
    # All chapters will have this data.
    attr_reader :npc1 # The name of the chapter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize()
        @npc1 = ("Bob the barkeep")
        @npc1_voice = ("In his muffled tone")
        @chapter_intro = ("Your vision clears as you look around the room there is a man you recognize in front of you across the bar counter, you feel as though he has been serving you drinks for the past hour what was his name again? Bob or somthing his the barkeeper so I will just call him that #{@npc1} around you there are patrons thoughout the bar, you can recognize any others, its loud and crowded it seems to be a buisy time.") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("Ask for a drink")
        @options.push("Ask about the night terrors")
        @options.push("Get up, thank #{@npc1} for the drinks but you have to go")
        @options.push("Try to remember what you were doing before this")
        @options.push("Coffee please")
        
    end
    # Well, #{player.name} #{@npc1} #{npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area, 
    # you may want to take your drink and leave
    def print_intro(player_name)

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
            print_intro(player.name)
            print_options
            players_choice = get_player_choice
            enact_consequences_of_players_choice(player, players_choice)
    end
end