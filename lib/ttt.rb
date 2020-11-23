# frozen_string_literal: true
# Tic-tac-toe game
class Game
  @map = Array.new(9, '-')

  class << self
    attr_accessor :map
    def printm
      print "#{map[0]} | #{map[1]} | #{map[2]}
            \n#{map[3]} | #{map[4]} | #{map[5]}
            \n#{map[6]} | #{map[7]} | #{map[8]}"
    end
  end

  def initialize
    @win_con = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  end
end

# Player class to play game
class Player < Game
  attr_accessor :map, :choices
  attr_reader :wins

  def initialize(id)
    super()
    @id = id
    @choices = []
    @wins = 0
  end

  def play(num)
    @choices = [] if Game.map.include?(@id) == false && @choices != []
    Game.map[num - 1] = @id
    @choices.push(num)
    Game.printm
    check_win if @choices.size > 2
  end

  def check_win
    @win_con.each do |arr|
      if arr.all? { |cell| @choices.include?(cell) } == true
        Game.map = Array.new(9, '-')
        @wins += 1
        return "#{@id} Won!"
      else
        next
      end
    end
  end
end
