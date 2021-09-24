require_relative "Chapters/Chapter1" # Paste Encounter.rb here.
require_relative "Player" # Paste Player.rb here.
# require "wallpaper" MY GEMS AINT WORKING!
# Wallpaper.set_path("Chapters/Chapter1")
# Wallpaper.run
# require ‘win32/sound’
# include Win32
# Sound.play(‘chimes.wav’)
# Sound.play(‘my_file.wav’)
chapter_map = ["Chapters/Chapter1", "Chapters/Chapter2"]
player = Player.new
chapter_map[1] = Chapter.new
@chapters.map{|chapter| Chapter.new()}
while true
    system("clear")
    player.print_self()
    chapter.perform(player)
    player.print_self()
    
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
        #put some way to restart chapter here please...
    end
end

