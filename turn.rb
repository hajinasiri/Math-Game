class Turn

  def initialize(player1,player2,question,round)
    @player1 = player1
    @player2 = player2
    @question = question
    @round = round
    @current_user = player1
    @answer = 0
  end

  def set_current_user
    if @round%2 == 0
      @current_user = @player2
    else
      @current_user = @player1
    end
  end

  def play
    puts "-----NEW TURN-----"
    puts "#{@current_user.name} : #{@question.create}"
    puts @question.answer
    @answer = gets.chomp.to_i
  end

  def check
    if @question.answer == @answer
      puts "That's correct"
      @current_user.score_up
    else
      puts "That's wrong"
    end
    puts "player1 #{@player1.score}/3 vs player2 #{@player2.score}/3", ""
  end

  def result
    players = [@player1, @player2]
    players.sort_by { |player| player.score }
    puts "#{players[0].name} wins with a score of #{players[0].score}/3"
  end
end