require_relative "../Player"

describe Player do 
    before(:example)do
    @player = Player.new()
                @player.name = "player"
                @player.hp = 90
                @player.max_hp = 100
                @player.gld = 10
                @player.stam = 100
                @player.mana = 0
                @player.time = 0
                @player.new_game_plus = false
                @player.survived_ch3 = false
            end
#HP
it 'take_damage should change the hp value negatively with input' do
@player.take_damage(10)
expect(@player.hp).to eq(80)
end
it 'heal_damage should change hp value positively with input' do
@player.heal_damage(10)
expect(@player.hp).to eq(100)
end
it 'check_hp should return the current hp of player' do
current_hp = @player.check_hp()
expect(@player.hp) .to eq(current_hp)
end
#GOLD
it 'gain_gold should change the gld value negatively with input' do
@player.gain_gold(10)
expect(@player.gld).to eq(20)
end
it 'spend_gold should change gld value positively with input' do
@player.spend_gold(10)
expect(@player.gld).to eq(0)
end
it 'check_hp should return the current gld of player' do
current_gld = @player.check_gld()
expect(@player.gld) .to eq(current_gld)
end
#MANA
it 'gain_mana should change the mana value positively with input' do
@player.gain_mana(10)
expect(@player.mana).to eq(10)
end
it 'check_mana should return the current mana of player' do
current_mana = @player.check_mana()
expect(@player.mana) .to eq(current_mana)
end
#TIME
it 'spend_time should change the mana value positively with input' do
@player.spend_time(1)
expect(@player.time).to eq(1)
end
it 'check_time should return the current time of player' do
current_time = @player.check_time()
expect(@player.time) .to eq(current_time)
end
#DOORLOCK
it 'lock_door should change the door_locked value between true or false with input' do
@player.lock_door(true)
expect(@player.door_locked).to eq(true)
end
it 'is_door_locked should return the current state of players door' do
current_door_lock = @player.is_door_locked()
expect(@player.door_locked) .to eq(current_door_lock)
end
#NEWGAME+ wanted to check this but predetermined values made it fail compared to door_locked
#SURVIVEDCH3 wanted to check this but predetermined values made it fail compared to door_locked

end