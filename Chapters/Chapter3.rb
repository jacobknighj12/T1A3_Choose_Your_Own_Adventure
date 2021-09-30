class Chapter3
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    def initialize(player)
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
        @chapter_intro = ("After entering the forrest you start hearing sounds all around you, but press on. It starts getting colder when you get closer to the ruins.. you clear the forrest and reach an open cleaning filled with dead flowers, you can see the man off in the distance, he waves urgently and shouts. but it was too late. after turning around all you see along the entire edgeline of the forrest cold, almost dead eyes thousands of them as far left and right as you can see, seconds later your surrounded by night terrors") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("fight one at a time with your knife")
        #if player.check_mana >= 10
        @options.push("Tear some light out of the entitys(10 mana required)") #gain 100
        #end
        #if player.check_mana >= 50
        @options.push("Tear 10's of lights out of the entitys(50 mana required)") # gain 250
        #end
        #if player.check_mana >= 320
        @options.push("Tear 100's of lights out of the entitys(320 mana required)") #gain 620
        #end
        #if player.check_mana >= 1000
        @options.push("Tear 1000's of lights out of the entitys(1000 mana required)")
        #end

        conseq1 = []




        @consequences = []
        @consequences.push("You brandish the knife, its now glowing a violent blue and attempt to fight your way out, no matter how many of them you kill. More endlessly follow, until you reach the exhaustion point and not being able to see anymore then fall down and slowly feel yourself being devoured.")
        @consequences.push("A dull blue energy eminating from yourself reaches outwards and begins raviging the entitys around you. The energy quickly dulls and fades, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push("A consistent blue energy eminating from yourself reaches outwards and begins raviging the entitys further around you, lashing out at any that comes near, there begin to charge in waves, taking more and more ground till once again. The energy dulls, fades and again, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push("A bright blue energy eminating from yourself reaches outwards and begins raviging the entitys far away lashes of this energy rip through hundreds the corpses piling higher every moment, fighing against this horde after what feels like an eternity the energy once again begins to fade, its still not enough and again, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push Rainbow("A brilliant, dazzling light fills the entire area, even you are almost blinded by the ammount of energy you have accumulated. This immense power like becoming almost an entity of its own each strand without hesitation thousands of the entities are decimated waves and tides of the creatures like wheat to the scythe decimating anything that comes near, the brilliance of the flow of mana doesnt dim, you can almost feel anything living around you, you can tell the last Night terror has been killed...").blue.bright
        
        
    end
    # Well, #{player.name} #{@npc1} #{npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area,you may want to finish your drink and leave soon.
    def print_intro(player_name)

            puts "Chapter 3"
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
                    
                    puts Rainbow("after some time they overwhelm you").red
                    player.gain_mana(5)
                    player.start_new_game_plus(true)
                    player.take_damage(10)
                    player.spend_time(1)
                when 1
                    puts Rainbow("after some time they overwhelm you").red
                    puts Rainbow("gain +100 mana").blue
                    player.gain_mana(100)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 2
                    puts Rainbow("after some time they overwhelm you").red
                    puts Rainbow("gain +250 mana").blue
                    player.gain_mana(250)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 3
                    puts Rainbow("after some time they overwhelm you").red
                    puts Rainbow("gain +620 mana").blue
                    player.gain_mana(620)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 4
                    player.survived_ch3(true)
                    player.start_new_game_plus(true)
                    
                    gets
                   # player.ending(true) NEED TO SETUP THIS FOR A ENDING
            end
    end
    

end