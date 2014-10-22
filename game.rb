require_relative('map')
class Game
  def initialize
    puts "1. New Game"
    puts "2. Continue Game"
    newgame = gets.chomp.to_i
  end
  def run
    map = Map.new(16)
  end
end