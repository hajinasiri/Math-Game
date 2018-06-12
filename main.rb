require './player.rb'
require './question.rb'
require './turn.rb'

player1 = @player::Player.new('player1')
player2 = @player::Player.new('player2')
question = @question::Question.new

for i in 1..6 do
  turn = @turn::Turn.new(player1,player2,question,i)
  turn.set_current_user
  turn.play
  turn.check
end
turn.result
puts "-----GAME OVER-----","GOOD BYE"
