require_relative "Chapters/Chapter" # Paste Encounter.rb here.
require_relative "Player" # Paste Player.rb here.

player = Player.new
chapter = Chapter1.new

while true
    system("clear")
    player.print_self()
    chapter.perform(player)
    player.print_self()
    
    if player.health == 0
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

