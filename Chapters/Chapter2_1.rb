class Chapter2_1
    # All chapters will have this data.
    attr_reader :npc1 # The name of the chapter, duh!
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize()
        # oh no you didnt lock your door!
        @npc1 = ("Night terror")
        @npc1_voice = ("a rasping wheeze echos")
        @chapter_intro = ("You get up the stairs to the second floor where the rooms are and find your room, you clumsily open the door and a dark and damn room awaits your rest. You gladly sit your things down and lay your head to rest, trying not to think about the weird feeling you have right now.") 
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

            puts "Chapter 2.1"
            # puts "#{player_name} sees a #{@name}." may use this at some point?
            # puts @art same?
            puts @chapter_intro
            puts "You drift off to sleep..."
            puts "Press the Enter key to continue..."
            gets
            puts "Your concience drifts back to you slowly as you feel a painful cold over your entire body, tugging on the frayyed sheets as if begging them to give you more heat, you hear a whisper in the night Unknown:'Ahh...' #{@npc1_voice}"
            puts "1. Jump up and attack the being" 
            puts "2. Stand up and promptly appoligise for not holding the door open"
            puts "3. Squeeze your eyes tightly and pretend you dont exsist"
            puts "4. Slowly slide your hand towards your bag and reach for your knife"
            print "Enter your choice:"
            gets
            "...Your paralyzed all you can do is open your eyes to the thing that breathes even more cold air around you theres only moonlight silhouetting the thing, with a few highlights over it giving you more then enough information. Around what you assume is the 'face' is long hook like teeth its jutting out more than an arms length outwards and its form looks like that of a leech made of bone and sparse flesh, that of it has is glistening as though being completely frozen."
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