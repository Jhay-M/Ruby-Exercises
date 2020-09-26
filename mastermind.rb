class Game
  attr_reader :random_code
  def initialize
    @colors = %w[r o y g b i]
    @random_code = @colors.shuffle
    @code = @random_code.slice(0, 4)
  end
end

class Player < Game
  attr_reader :array
  def initialize(choice)
    @choice = choice
    if @choice == 'creator'
      str = gets.chomp
      @code = str.split(' ')
    else
      super()
    end
    @turns = 12
  end

  def guess(str)
    @array = str.split(' ')
    if @array == @code
      puts "You guessed the code: #{@code}"
      reset
    else
      check_code
    end
    @turns -= 1
    turn_check
  end

  def check_code
    i = 0
    while i < 4
      if @code.include?(@array[i])
        if @array[i] == @code[i]
          puts "#{@array[i]} is correct and well placed"
        else
          puts "#{@array[i]} is correct but placed wrong"
        end
      else
        puts "#{@array[i]} is incorrect"
      end
      i += 1
    end
  end

  def turn_check
    if @turns.zero?
      reset
      'Game Over'
    end
  end

  def reset
    @turns = 12
    @random_code = @colors.shuffle
    @code = @random_code.slice(0, 4)
  end
end
