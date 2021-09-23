
class Player
    attr_reader :name    
    attr_reader :hp 
    attr_reader :gld    
    attr_reader :stam 
    attr_reader :mana
    def initialize()
        print "For best player experience, please enter your REAL name: "
        @name = gets.strip 
        @hp = 100
        @gold = 10
        @stam = 100
        @mana = 0
    end

    def print_self()
        puts "#{@name} has #{@hp} health."
        puts "#{@name} has #{@stam} stamina."
        puts "#{@name} has #{@gld} gold."
    end
end