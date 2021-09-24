
class Player
    attr_reader :npc1
    attr_reader :name    
    attr_reader :hp 
    attr_reader :gld    
    attr_reader :stam 
    attr_reader :mana
    def initialize()
        puts "For best player experience, please enter your REAL name: "
        @name = gets.strip
        while @name == ""
        puts "Unknown: Sorry, What was that I didnt catch it?"
        @name = gets.strip
        end
        @hp = 100
        @gold = 10
        @stam = 100
        @mana = 0
        puts "Unknown: So, your name is #{@name}"
        puts "Press the Enter key to continue..."
        gets 
    end

    def print_self()
        puts "#{@name} has #{@hp} health."
        puts "#{@name} has #{@stam} stamina."
        puts "#{@name} has #{@gld} gold."
    end
end