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