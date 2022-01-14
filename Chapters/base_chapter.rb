class BaseChapter
    attr_reader :npc1 # Name of the charecter your talking too
    attr_reader :options # The options, the player chooses!
    attr_reader :consequences # The consequence of the players choice of options.
    attr_reader :chapter_intro # Intro for the chapter!
    attr_reader :name #you?
    def print_options()
        
        @options.each_with_index do |option, options_index|
            puts "#{options_index + 1}. #{option}"
            
        end
    end
end