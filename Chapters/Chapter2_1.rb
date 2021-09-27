class Chapter2_1
    # All chapters will have this data.
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    
    def initialize(player)
        # oh no you didnt lock your door!
        @npc1 = ("Night terror")
        @npc1_voice = ("a rasping wheeze echos")
        @chapter_intro = ("You get up the stairs to the second floor where the rooms are and find your room, you clumsily open the door and a dark and damn room awaits your rest. You gladly sit your things down and lay your head to rest, trying not to think about the weird feeling you have right now.") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        
        @options = []
        @options.push("Jump up and attack the being")
        @options.push("Slowly slide your hand towards your bag and reach for your knife")
        @options.push("Push the creature to the side and run away")
        @options.push("Attempt to light the bedside lamp and hold it towards the creature(50%)")
        if @current_mana != 0
        @options.push("You see a glimmer from inside the creature, grab it?(-1 mana)")
        end
        @consequences = []
        @consequences.push("You jump up and wing your taveling bag with all your weight, it slams into the #{@npc1} against the weight of the imapct the creature is flung into the wall, momentarily stunned but after that breif moment it lunches itself towards you and attacks you, burying its teeth into you, you wince in pain and tear it off of you, knowing that hitting it again would do nothing you run out with your things and sprint out of the inn.")
        @consequences.push("Slowly reaching into your bag you find your knife, clasping your hand around it jumping up and with a single motion drawing it from your bag and embedding it into the #{@npc1} you notice as you hold it against the thing, your knife has a dull glow, the #{@npc1} hisses in pain with #{@npc1_voice} and take off breaking out though the thatched roof. You leave the inn going outside")
        @consequences.push("You grab your bag while jumping up and pushing your weight forwards, colliding with #{@npc1} slamming it against the wall, for a breif moment it is stunned and you are able to sprint out of the inn")
        @consequences.push("You roll the dice.")
        @consequences.push("You reach, but not with your hand, but somthing else you feel as though you can pull it away reaching with your concience it feels like pushing through mud, till you grab onto the light. You feel stronger, the weight of the mud, more like soup you pull back to see the #{@npc1} colapse on itself with incredible force snaps and cracks from all of its bones and crumple into a lump of remains. You leave the inn going outside")
        
        
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
            input = gets
            if input.include? "2"
                puts "You think to yourself, why would I say that..."
            end
            puts "...Your paralyzed. All you can do is open your eyes to the thing that now breathes even more cold air around you, theres only moonlight silhouetting the thing, with a few highlights over however it giving you more then enough information. Around what you assume is the 'face' is long hook like teeth jutting out more than an arms length outwards, its form looks like that of a leech made of bone and sparse flesh, of that flesh that it has is glistening as though being completely frozen."
            puts "Press the Enter key to continue..."
            gets
            puts "The #{npc1} comes closer slowly creeping forwards, you feel like you can move again."
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
            @current_mana = player.check_mana
            @current_hp = player.check_hp

            case players_choice
                when 0
                    puts "option 1"   
                when 1
                    puts "option 2"
                when 2
                    puts "option 3"
                when 3
                    roll = rand(2)
                if roll == 1
                    puts "You deftly light the lamp and hold it towards the creature, increasing the output and warming the room, #{@npc1} Screams and #{@npc1_voice}. It takes off breaking out though the thatched roof into the moonlit night. You walk out and leave the inn."
                else
                    puts "You falter, drop the match after failing to strike it to flame, in that moment The #{npc1} Launches forwards. Your vision goes dark hot liquid is felt on your skin, you start to feel hooks ripping though your arms but then... nothing."
                    player.take_damage(100)
                end
                when 4
                    puts "option 5"
                    player.gain_mana(45)
                    player.spend_stamina(25)
                end
                player.spend_time(1)
    end
    

end