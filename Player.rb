
# require_relative "blacklist"
class Player
    attr_reader :npc1
    attr_reader :name    
    attr_reader :hp 
    attr_reader :gld    
    attr_reader :stam 
    attr_reader :mana
    attr_reader :time
    # attr_reader :blacklist 
    #Got stuck on blacklist going to leave it for now... not a essential feature
    def initialize()
        # blacklist.new
        print "For best player experience, please enter your REAL name: "
        @name = gets.strip
        # while @name.include? @blacklist
        # puts "Unknown: Sorry, What was that I didnt catch it?.... >:("
        # @name = gets.strip
        # end
        while @name == ""
            puts "Unknown: Sorry, What was that I didnt catch it?"
            @name = gets.strip
        end
        if @name.include? "James" #Wanted to add some Cheat codes
            @hp = 1000
            @gld = 20000
            @stam = 1000
            @mana = 100
            @time = 0
            else
            @hp = 100
            @gld = 10
            @stam = 100
            @mana = 0
            @time = 0
        end
        if @name.include? "Jacob" 
            @hp = 1000
            @gld = 20000
            @stam = 1000
            @mana = 100
            @time = 0
            else
            @hp = 100
            @gld = 10
            @stam = 100
            @mana = 0
            @time = 0
            end
        puts "Unknown: So, your name is #{@name}"
        puts "Press the Enter key to continue..."
        gets 
    end
    def secret_found(reward)
        @mana += reward
    end
    def take_damage(damage)
        @hp -= damage
    end
    def heal_damage(healing)
        @hp += damage
    end
    def gain_gold(ammount)
        @gld += ammount
    end
    def spend_gold(ammount)
        @gld -= ammount
    end
    def spend_stamina(ammount)
        @stam -= ammount
    end
    def gain_stamina(ammount)
        @stam += ammount
    end
    def spend_mana(ammount)
        @mana -= ammount
    end
    def gain_mana(ammount)
        @mana += ammount
    end
    def spend_time(ammount)
        @time -= ammount
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