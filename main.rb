require './player.rb'
require './question'

player1 = player::Player.new('player1')
player2 = player::Player.new('player2')



question1 = question::Question.new


for i in 1..6 do
  if i%2 == 0
    current_user = player2
  else
    current_user = player1
  end
  puts "#{current_user.name} : #{question1.create}"
  puts question1.answer
  input = gets.chomp
  input = input.to_i
  if question1.answer==input
    puts "That's corret"
    current_user.score_up
  else
    puts "That's wrong"
  end
  puts "player1 #{player1.score}/3 vs player2 #{player2.score}/3", "", "-----NEW TURN-----"
end
puts "-----GAME OVER-----","GOOD BYE"
