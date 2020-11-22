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
    if @choice == 'create'
      str = gets.chomp
      @code = str.split(' ')
      com_guess
    else
      super()
    end
    @turns = 5
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
        @array[i] == @code[i] ? "#{@array[i]} is correct and well placed" : "#{@array[i]} is correct but placed wrong"
      else
        puts "#{@array[i]} is incorrect"
      end
      i += 1
    end
  end

  def com_guess
    @colors = %w[r o y g b i]
    @random_code = @colors.shuffle
    @com_code = @random_code.slice(0, 4)
    @turns = 5
    puts "Computer guessed #{@com_code}"
    com_guess_check
  end

  def com_guess_check
    if @com_code == @code
      puts 'Computer Wins!'
    else
      com_guess_logic
    end
  end

  def com_guess_logic
    
  end

  def turn_check
    puts "#{@turns} tries left"
    if @turns.zero?
      reset
      'Game Over'
    end
  end

  def reset
    @turns = 5
    @random_code = @colors.shuffle
    @code = @random_code.slice(0, 4)
  end
end
