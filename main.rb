require_relative "Chapters/Chapter1" 
require_relative "Chapters/Chapter2"
require_relative "Chapters/Chapter2_1"
require_relative "Chapters/Chapter3"
require_relative "Chapters/Chapter_End" 
require_relative "Player" 
require 'rainbow'
require 'tty-link' #intention was to allow the user to click the link in terminal, didnt pan out that way but kept it because it looks nice
chapter_map = []
puts "This is a choose your own adventure horror game. Please take the time to set the terminal in full screen"
    puts "This game is best played with background music and headphones to set the mood. Please follow the link below"
    puts puts TTY::Link.link_to("KEYGEN CHURCH - ░█░█░░█░█░█░", "https://www.youtube.com/watch?v=27LZr9dDWRs")
    puts "Keep in mind the tracks do get a bit intense so adjust the volume for your prefrence."
    puts "The interactions in this game will be simple multiple choice numbers from a list, the list will show you each option, only when it asks for you name will you have to type a full string. For best use please only input one of the options provided."
    puts "Press Enter to start..."
    gets
player = Player.new
chapter_map[0] = Chapter1.new(player)
chapter_map[1] = Chapter2.new(player)
chapter_map[2] = Chapter3.new(player)
chapter_map[10] = Chapter2_1.new(player)
chapter_map[8] = Chapter_End.new(player)
index = 0

while true
    
    system("clear")
    player.print_self()
    chapter_map[index].perform(player)
    door_locked = player.is_door_locked
    time = player.check_time
    player.print_self()
    
    if index == 0  
        
        if door_locked == false
        index = 10
        else
        index += 1 
        end
    elsif index == 2
        if player.check_survived_ch3 == true
            index = 8
        else
        index = 0
        end
    elsif index == 10
        index = 1 #exit side loop
    elsif index == 8
        if player.check_survived_ch3 == false
            break
        else
        index = 0
        end
    else
    index += 1 
    end
    if player.check_hp <= 0
        puts "YOU DIED.. GAME OVER" 
        puts "Retry? Y/N"
        input = gets
        player.spend_time(1)
        if input.include? "Y" or "y"
        puts "You wake up with a gasp in the tavern."
        puts "Press Enter to continue..."
        gets
        player.heal_damage(80)
        index = 0
        else
            break
        end
    else
        puts "Press Enter to start the next chapter..."
        gets
    end
end

