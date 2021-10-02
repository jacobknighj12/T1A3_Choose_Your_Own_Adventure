def get_player_choice(player)
    valid_input = false
    while !valid_input
    
    print "Enter your choice: "
    players_choice = gets.to_i - 1 # 0->3
    valid_input = players_choice >= 0 && players_choice < @options.length
        if !valid_input
        print "Error: user has provided an incorrect value. \n"
        end
    end
    puts word_wrap(@consequences[players_choice])
    # return players_choice
end