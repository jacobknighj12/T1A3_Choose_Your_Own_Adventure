require_relative "../player_input"
require_relative './base_chapter'
class Chapter_End < BaseChapter
    def initialize(player)
        @times_died = player.check_time
        @npc1 = ("Samos")
        @npc1_voice = ("like a creaking old oak")
        @chapter_intro = ("The dust settles, you walk towards where you spotted Samos and meet up with him, your both now standing in front of a dark, almost surreal tabet with text on it moving unlike anything you have ever seen before, or have you? #{@npc1} #{@npc1_voice} Speaks up 'You may not remember, but you have lived #{@times_died} times in this hell loop, possibly more if the creator R░S█Ar░S. I remember all of them there is only one way to end this maddness, you have to ask the creator, or rather. You have to ask yourself to let us go.'") 
        #the sentence doesnt like to be shown over multiple lines so it will be one line
        #will leave intro's for the scene and surroundings of the player
        
        @options = []
        @options.push("A8D9_█░█░█_D1E09█░█░█_D1C2░░█░█")
        @options.push("D1C2H█░█░█9I1J9H3E0")
        @options.push("D█░░A8D9__█1C2H█░█░█9I1D█░░█░░9") 
        @options.push("█░█░█_█░9H3E0A8D9__")
        @options.push("░1C2H█░█░█░█_DH█░█░█9I1D█░")
        @options.push("░_D1C2H█░█░█9I1D█░")
        @options.push("_█░░█░░░█░█░█_D░9J1C2H█░█░█9I1D█░")
        @options.push("░█░█░█_DI1D██░█░█░")
        @options.push("░█9I1DC2H█░█░█░░9J9H3█░")
        
        @consequences = []
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        @consequences.push("")
        
        
    end
    # Well, #{player.name} #{@npc1} #{npc1_voice} states. You probably dont want to hang around long the night terror has been stalking this area,you may want to finish your drink and leave soon.
    def print_intro(player_name, chapter_title)

            puts chapter_title
            # puts "#{player_name} sees a #{@name}." may use this at some point?
            # puts @art same?
            puts word_wrap(@chapter_intro)
            puts "..."
            gets
            puts player_name + ".. turns to ░_Y█u" 
            puts "Y█u, can feel " + player_name + " looking at you"
            puts player_name + " 'I knew somthing was weird..'"
            gets 
            puts player_name + "'" + player_name + " Can you... end this please? Im starting to remember how much it hurt.. each time I got torn apart, please'" 
            gets
            File.open( "Code.txt", "w" ) do |file|
                file.puts "░_D1C2H█░█░█9I1D█░"
                end
            puts "Code.txt created successful"
            gets
            puts "#{npc1} 'You should have some... control over this world. with my strength all I could do was " + Rainbow("Create").gold + " somthing, you need to find that creation. it has the " + Rainbow("Code.").purple + "'"
    end

    

    
    
        # All chapters will run perform method at some point possibly multiple times!
    def perform(player)
            print_intro(player.name, "Welcome to THE END")
            print_options
            players_choice = get_player_choice(@options, @consequences)
            

            case players_choice
                when 0
                   puts "Did you fail on purpose??! You have doomed us to another L░█P"
                   puts "You fool! it's in the F█lde░█"
                   gets
                when 1
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 2
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 3
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 4
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 5
                    puts "'Thankyou.. " + player.name + "'"    
                player.survived_ch3(false)
                gets
                when 6
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 7
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 8
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                when 9
                    puts "Did you fail on purpose??! You have doomed us to another L░█P"
                    puts "You fool! it's in the F█lde░█"
                   gets
                
            end
            player.spend_time(1)
    end
    

end