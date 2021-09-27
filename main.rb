require_relative "Chapters/Chapter1" 
require_relative "Chapters/Chapter2"
require_relative "Chapters/Chapter2_1"
require_relative "Chapters/Chapter3"
require_relative "Player" 
require 'rainbow'
require 'tty-link'
chapter_map = []
player = Player.new
chapter_map[0] = Chapter1.new
chapter_map[1] = Chapter2.new(player)
chapter_map[2] = Chapter3.new
chapter_map[3] = Chapter2_1.new
index = 0




puts Rainbow("this is red").red + " and " + Rainbow("this on yellow bg").bg(:yellow) + " and " + Rainbow("even bright underlined!").underline.bright
puts "This is a choose your own adventure horror game. Please take the time to set the terminal in full screen"
puts "This game is best played with background music and headphones to set the mood. Please follow the link below"
puts puts TTY::Link.link_to("KEYGEN CHURCH - ░█░█░░█░█░█░", "https://www.youtube.com/watch?v=27LZr9dDWRs")
puts "Keep in mind the tracks do get a bit intense so adjust the volume for your prefrence."
puts "The interactions in this game will be simple multiple choice numbers from a list, the list will show you each option, only when it asks for you name will you have to type a full string. For best use please only input one of the options provided."

# @chapters.map{|chapter| Chapter.new()} I dont know how to use this I know how to increment and use arrays so i will ignore this for now
while true
    system("clear")
    player.print_self()
    chapter_map[index].perform(player)
    door_locked = player.is_door_locked
    time = player.check_time
    player.print_self()
    if index == 0  
        
        if door_locked == false
        index = 3
        else
        index += 1 
        end
    else
        
        puts "Your not in chapter 1" # REMOVE LATER FOR DEBUGGING PURPOSES
        
    index += 1
    end
    if player.hp == 0
        puts "YOU DIED.. GAME OVER" 
        puts "Retry? Y/N"
        input = gets
        if input.include? "Y"
            "ANYWAY!"
            player.heal_damage(100)
            index = 0
        end
    else
        puts "Press Enter to start the next chapter..."
        gets
    end
end
def continue()
    puts "continue?...  Y/N"
    input = gets
    if input.include? "Y"
        #put some way to restart chapter here please... pass it on to the next guy, thanks..
    end
end
