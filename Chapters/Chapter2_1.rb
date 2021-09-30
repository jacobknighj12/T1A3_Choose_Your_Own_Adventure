class Chapter2_1
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    
    def initialize(player)
        # oh no you didnt lock your door!
        @npc1 = ("Night terror")
        @npc1_voice = ("a rasping wheeze echos")
        @chapter_intro = ("You get up the stairs to the second floor where the rooms are and find your room, you clumsily open the door and a dark and damn room await's your rest. You gladly sit your things down and lay your head to rest, trying not to think about the weird feeling you have right now.") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("Jump up and attack the being")
        @options.push("Slowly slide your hand towards your bag and reach for your knife")
        @options.push("Push the creature to the side and run away")
        @options.push("Attempt to light the bedside lamp and hold it towards the creature(50%)")
       # if player.check_mana != 0
        @options.push("You see a glimmer from inside the creature, grab it?(-1 mana)") 
       # end # if you want more options you will need to apply the if to consequences too

        @consequences = []
        @consequences.push("You jump up and swing your taveling bag with all your weight, it slams into the #{@npc1}. Against the weight of the imapct the creature is flung into the wall, momentarily stunned but after that breif moment it lunches it'self towards you and attacks you, burying it's teeth into you, you wince in pain and tear it off of you, knowing that hitting it again would do nothing you run out with your things and sprint out of the inn.")
        @consequences.push("Slowly reaching into your bag you find your knife, clasping your hand around it jumping up and with a single motion drawing it from your bag and embedding it into the #{@npc1} you notice as you hold it against the thing, your knife has a dull glow, the #{@npc1} hisses in pain with #{@npc1_voice} and take off breaking out though the thatched roof. You leave the inn going outside")
        @consequences.push("You grab your bag while jumping up and pushing your weight forwards, colliding with #{@npc1} slamming it against the wall, for a breif moment it is stunned and you are able to sprint out of the inn")
        @consequences.push("You roll the dice.")
      #  if player.check_mana != 0
        @consequences.push("You reach, but not with your hand, but somthing else you feel as though you can pull it away reaching with your concience it feels like pushing through mud, till you grab onto the light. You feel stronger, the weight of the mud, more like soup now, you pull back to see the #{@npc1} colapse on it'self with incredible force snaps and cracks from all of it's bones as it crumples into a lump of remains. You leave the specticle, having done enough for one night and leave the inn going outside")
       # end
        
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
            puts "...Your paralyzed. All you can do is open your eyes to the thing that now breathes even more cold air around you, theres only moonlight silhouetting the thing, with a few highlights over however it's giving you more than enough information. Around what you assume is the 'face' is long hook like teeth jutting out more than an arms length outwards, it's form looks like that of a leech made of bone and sparse flesh, of that flesh that it has is glistening as though being completely frozen."
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

    def get_player_choice(player)
            print "Enter your choice: "
            players_choice = gets.to_i - 1 # 0->3
            while players_choice == 4 #-1 here from each ajusted number
                if player.check_mana == 0
                puts "you dont have the requirements for this (1 mana)"
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
            @current_mana = player.check_mana
            @current_hp = player.check_hp
            @current_stamina = player.check_stamina

            case players_choice
                when 0
                      #if stamina is less than required ammount = die
                    player.spend_stamina(30)
                    player.take_damage(40)
                    puts "-40 Health"
                    puts "-30 Stamina"
                when 1
                    #if stamina is less than required ammount = die
                    player.spend_stamina(30)
                    puts "-30 Stamina"
                when 2
                    player.spend_stamina(10)#if stamina is less than required ammount = die
                    puts "-10 Stamina"
                when 3
                    roll = rand(2)
                if roll == 1
                    puts "You deftly light the lamp and hold it towards the creature, increasing the output and warming the room, #{@npc1} Screams and #{@npc1_voice}. It takes off breaking out though the thatched roof into the moonlit night. You walk out and leave the inn."
                else
                    puts "You falter, drop the match after failing to strike it to flame, in that moment The #{npc1} Launches forwards. Your vision goes dark hot liquid is felt on your skin, you start to feel hooks ripping though your arms but then... nothing."
                    player.take_damage(100)
                    player.spend_time(1)
                end
                when 4
                    if @current_mana != 0 #or @check_stamina <= 25
                    puts "+45 Mana"
                    puts "-25 Stamina"
                    player.gain_mana(45)
                    player.spend_stamina(25)#if stamina is less than required ammount = die
                    else
                        puts "You dont have the requirements please pick another option"
                        get_player_choice() 
                      while get_player_choice() == "" or get_player_choice() == "5"
                        get_player_choice()
                        
                      end
                end
                
    end
    

end end #I dont know why this second end wanted to be here will probably need to fix...