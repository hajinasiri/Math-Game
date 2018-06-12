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