class Chapter1
    # All chapters will have this data.
    attr_reader :name # The name of the chapter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize()
        @name
        @chapter_intro
        @options = []
        @options.push("")
        @options.push("")
        @options.push("")
        @options.push("")
        
    end

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
        # All chapters will run perform method.
    def perform(player)
            print_intro(player.name)
            print_options
            players_choice = get_player_choice
            enact_consequences_of_players_choice(player, players_choice)
    end
end