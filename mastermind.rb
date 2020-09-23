class Game
  attr_reader :random_code
  def initialize
    @code = %w[red blue yellow black]
    @random_code = @code.shuffle
  end
end

class Player < Game
  attr_reader :array
  def initialize
    super()
    @turns = 12
  end

  def guess(str)
    @array = str.split(' ')
    self.check_code
    @turns -= 1
    if @turns.zero?
      @turns = 12
      'Game Over!'
    end
  end

  def check_code
    i = 0
    while i < 4

      if @array == @random_code
        return "You guessed the code: #{@random_code}"
      elsif @array[i] == @random_code[i]
        puts "#{array[i]} is correct"
      else
        puts "#{array[i]} is incorrect"
      end

      i += 1
    end
  end
end
