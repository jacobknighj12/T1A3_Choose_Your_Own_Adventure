
require_relative "blacklist"
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
        while @name.include? @blacklist
        puts "Unknown: Sorry, What was that I didnt catch it?"
        @name = gets.strip
        end
        while @name == ""
        puts "Unknown: Sorry, What was that I didnt catch it?"
        @name = gets.strip
        end
        if @name.include? "James" #Wanted to add some Cheat codes
        @hp = 1000
        @gld = 20000
        @stam = 1000
        @mana = 100
        else
        @hp = 100
        @gld = 0
        @stam = 100
        @mana = 0
        end
        if @name.include? "Jacob" 
            @hp = 1000
            @gld = 20000
            @stam = 1000
            @mana = 100
            else
            @hp = 100
            @gld = 0
            @stam = 100
            @mana = 0
            end
        puts "Unknown: So, your name is #{@name}"
        puts "Press the Enter key to continue..."
        gets 
    end

    def print_self()
        puts "#{@name} has #{@hp} health."
        if @hp <= -1
        puts "hp is lower than zero I hope your dead right now"
        end
        puts "#{@name} has #{@stam} stamina."
        if @gld <= 0
            puts "#{@name} has no gold."
        else
        puts "#{@name} has #{@gld} gold."
        end
        if @mana >= 1
            puts "#{@name} has #{@mana} mana"
        end
    end
end