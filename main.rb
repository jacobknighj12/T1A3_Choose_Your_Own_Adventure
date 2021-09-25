require_relative "Chapters/Chapter1" # Paste Encounter.rb here.
require_relative "Chapters/Chapter2"
require_relative "Chapters/Chapter2.1"
require_relative "Chapters/Chapter3"
require_relative "Player" # Paste Player.rb here.
# require "wallpaper" MY GEMS AINT WORKING!
# Wallpaper.set_path("Chapters/Chapter1") WHY IS IT SO HARD TO GET YOU GUYS TO DO YOUR JOB!
# Wallpaper.run
# require ‘win32/sound’ I JUST WANTED A TRACK PLAYED!
# include Win32
# Sound.play(‘chimes.wav’)
# Sound.play(‘my_file.wav’)
p chapter_map = ["Chapter1", "Chapter2", "Chapter3"]
player = Player.new
chapter_map[0] = Chapter1.new
chapter_map[1] = Chapter2.new
chapter_map[2] = Chapter3.new
chapter_map[3] = Chapter2_1.new
index = 0
time = player.check_time
door_locked = chapter_map[0].is_door_locked
# @chapters.map{|chapter| Chapter.new()} I dont know how to use this I know how to increment and use arrays so i will ignore this for now
while true
    system("clear")
    player.print_self()
    chapter_map[index].perform(player)
    player.print_self()
    if index == 0 && door_locked = false
        index = 3
    else
    index += 1
    end
    if player.hp == 0
        break
    else
        puts "Press enter button to start the next chapter..."
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

