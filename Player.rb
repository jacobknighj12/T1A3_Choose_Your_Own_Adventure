# require_relative "blacklist"
class Player
    attr_reader :npc1
    attr_accessor :name   
    attr_accessor :max_hp 
    attr_accessor :hp 
    attr_accessor :gld    
    attr_accessor :stam 
    attr_accessor :mana
    attr_accessor :time
    attr_accessor :door_locked
    attr_accessor :new_game_plus
    attr_accessor :survived_ch3
    # attr_reader :blacklist 
    #Got stuck on blacklist going to leave it for now... not a essential feature STILL NOT WORKING THIS GOD DARRRRNNN
    def initialize()
    #     if @time <= 2 #time is a placeholder here need to change for newgame+
    #         secret_title = "Hell_Loop" #Ignore this if your looking here before playing the game, nothing to see here move along.
    #         else
    #             secret_title = " █░░░_░██░ "
    #         end
        #why you no work
        # blacklist[] = Blacklist.new()
        # p blacklist
        # puts "Welcome too" + Rainbow(secret_title).red 
        print "For best player experience, please enter your REAL name: "
        @name = gets.strip
        # while blacklist.include? @name
        # puts "Unknown: Sorry, What was that I didnt catch it?.... >:("
        # @name = gets.strip
        # end
        while @name == ""
            puts "Unknown: Sorry, What was that I didnt catch it?"
            @name = gets.strip
        end
        if @name.include? "Bob" #Wanted to add some Cheat codes
            puts "secret inputed, this is no longer a normal run."
            @hp = 100
            @max_hp = 100
            @gld = 20000
            @stam = 100
            @mana = 100
            @time = 0
            @new_game_plus = false
            @survived_ch3 = false
        elsif @name.include? "Jacob" 
            puts "secret inputed, this is no longer a normal run."
            @hp = 100
            @max_hp = 100
            @gld = 20000
            @stam = 1000
            @mana = 100
            @time = 0
            @new_game_plus = false
            @survived_ch3 = false
        elsif @name.include? "Samos" 
                puts "secret inputed, this is no longer a normal run."
                @hp = 100
                @max_hp = 100
                @gld = 20000
                @stam = 1000
                @mana = 10000
                @time = 200
                @new_game_plus = false
                @survived_ch3 = false
                else
                @hp = 100
                @max_hp = 100
                @gld = 10
                @stam = 100
                @mana = 0
                @time = 0
                @new_game_plus = false
                @survived_ch3 = false
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
        @hp += healing
    end
    def check_hp()
        return @hp
    end
    def check_max_hp()
        return @max_hp
    end
    def gain_gold(ammount)
        @gld += ammount
    end
    def spend_gold(ammount)
        @gld -= ammount
    end
    def check_gld()
        return @gld
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
    def check_mana()
        return @mana
    end
    def spend_time(ammount)
        @time += ammount
    end
    def check_time()
        return @time
    end
    def lock_door(state)
        @door_locked = state
        
    end
    def is_door_locked()
        return @door_locked
    end
    def player_name()
        return @name
    end
    def start_new_game_plus(state)
        @new_game_plus = state
    end
    def is_new_game_plus()
        return @new_game_plus
    end
    def check_stamina()
        return @stamina
    end
    def check_survived_ch3()
        return @survived_ch3
    end
    def survived_ch3(state)
        @survived_ch3 = state
    end
    # def hp_missing() THIS STUFF AINT WORKING I NEED TO FIND HP FOR HEALING AMMOUNT AND AMMOUNT OF GOLD TO COST FIXX THIS! GOING OVER MAX HP NOW TOO YAY!
    #     @hp 
    # end I fixed that now right? not sure....
    def print_self()
        puts Rainbow("#{@name} has #{@hp} health.").green
        if @hp <= -1
        puts "hp is lower than zero I hope you should be dead right now"
        end
        puts Rainbow("#{@name} has #{@stam} stamina.").yellow
        if @gld <= 0
            puts Rainbow("#{@name} has no gold.").red
        else
        puts Rainbow("#{@name} has #{@gld} gold.").gold
        end
        if @mana >= 1
            puts Rainbow("#{@name} has #{@mana} mana").blue
        end
    end
end
