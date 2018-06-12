class Player
  attr_accessor :score, :name

  def initialize (name)
    @name = name
    @score = 0
  end

  def score_up
    @score = @score +1
  end

end

player1 = Player.new('player1')
player2 = Player.new('player2')

class Question
  attr_accessor :answer

  def initialize
    @answer = 0
  end
  def create
    number1 = 1 + rand(20)
    number2 = 1 + rand(20)
    @answer = number1 + number2
    " what does #{number1} plus #{number2} equal?"
  end
end

question1 = Question.new


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
