require_relative './base_chapter'
class Chapter3 < BaseChapter
    def initialize(player)
        @npc1 = ("Night horrors")
        @npc1_voice = ("Can only be described as A8D9__█░░█░█░█_D1C2H█░█░█9I1D█░░█░░9J9H3E0")
        @chapter_intro = ("After entering the forest you start hearing sounds all around you, #{npc1} the sounds #{@npc1_voice} but you press on. It starts getting colder when you get closer to the ruins.. you clear the forest and reach an open cleaning filled with dead flowers, you can see the man off in the distance, he waves urgently and shouts. but it was too late. after turning around all you see along the entire edgeline of the forest cold, almost dead eyes thousands of them as far left and right as you can see, seconds later your surrounded by night terrors") 
       
        @options = []
        @options.push("fight one at a time with your knife")
        @options.push("Tear some light out of the entities(10 mana required)")
        @options.push("Tear 10's of lights out of the entities(50 mana required)")
        @options.push("Tear 100's of lights out of the entities(320 mana required)") 
        @options.push("Tear 1000's of lights out of the entities(1000 mana required)")
        
        @consequences = []
        @consequences.push("You brandish the knife, it's now glowing a violent blue and attempt to fight your way out, no matter how many of them you kill. More endlessly follow, until you reach the exhaustion point and not being able to see anymore then fall down and slowly feel yourself being devoured.")
        @consequences.push("A dull blue energy eminating from yourself reaches outwards and begins raviging the entities around you. The energy quickly dulls and fades, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push("A consistent blue energy eminating from yourself reaches outwards and begins raviging the entities further around you, lashing out at any that comes near, there begin to charge in waves, taking more and more ground till once again. The energy dulls, fades and again, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push("A bright blue energy eminating from yourself reaches outwards and begins raviging the entities far away lashes of this energy rip through hundreds the corpses piling higher every moment, fighing against this horde after what feels like an eternity the energy once again begins to fade, it's still not enough and again, you hear echoing words. 'You are not strong enough yet.' as you are overrun you fall down and slowly feel yourself being devoured.")
        @consequences.push Rainbow("A brilliant, dazzling light fills the entire area, even you are almost blinded by the ammount of energy you have accumulated. This immense power like becoming almost an entity of it's own each strand without hesitation thousands of the entities are decimated waves and tides of the creatures like wheat to the scythe decimating anything that comes near, the brilliance of the flow of mana doesnt dim, you can almost feel anything living around you, you can tell the last Night terror has been killed...").blue.bright
        
        
    end
     def print_intro(player_name)
            puts "Chapter 3"
            puts word_wrap(@chapter_intro)
    end

    

    def get_player_choice(player)
            print "Enter your choice: "
            players_choice = gets.to_i - 1
            while players_choice == 1 #-1 here from each ajusted number 
                if player.check_mana <= 9
                puts "you dont have the requirements for this (10 Mana)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
             while players_choice == 2 #-1 here from each ajusted number
                if player.check_mana <= 49
                puts "you dont have the requirements for this (50 Mana)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
             while players_choice == 3 #-1 here from each ajusted number
                if player.check_mana <= 319
                puts "you dont have the requirements for this (320 Mana)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
             while players_choice == 4 #-1 here from each ajusted number
                if player.check_mana <= 999
                puts "you dont have the requirements for this (1000 Mana)"
                puts "Enter your choice: "
                players_choice = gets.to_i - 1
                else
                break
                end
             end
            puts word_wrap(@consequences[players_choice])
            return players_choice
    end
    
    def perform(player)
            print_intro(player.name)
            print_options
            players_choice = get_player_choice(player)
            
            case players_choice
                when 0
                    puts Rainbow("After some time they overwhelm you. Within no time there is not a trace left of what you were. GAME OVER").red
                    puts Rainbow("gain +5 mana").blue
                    player.gain_mana(5)
                    player.start_new_game_plus(true)
                    player.take_damage(10)
                    player.spend_time(1)
                when 1
                    puts Rainbow("After some time they overwhelm you. Within no time there is not a trace left of what you were. GAME OVER").red
                    puts Rainbow("gain +50 mana").blue
                    player.gain_mana(50)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 2
                    puts Rainbow("After some time they overwhelm you. Within no time there is not a trace left of what you were. GAME OVER").red
                    puts Rainbow("gain +200 mana").blue
                    player.gain_mana(200)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 3
                    puts Rainbow("After some time they overwhelm you. Within no time there is not a trace left of what you were. GAME OVER").red
                    puts Rainbow("gain +600 mana").blue
                    player.gain_mana(600)
                    player.take_damage(10)
                    player.start_new_game_plus(true)
                    player.spend_time(1)
                when 4
                    player.survived_ch3(true)
                    player.start_new_game_plus(true)
                    gets
                else
                    puts "Error: user has provided an incorrect value, please enter your option."
                    players_choice = get_player_choice(player)
                    return players_choice
            end
    end
    

end