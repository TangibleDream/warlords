require_relative('map')
require_relative('mapsquare')
class Game
  def initialize
    puts "1. New Game"
    puts "2. Continue Game"
    newgame = gets.chomp.to_i
    case newgame
      when 1
        create_game
    end
  end
  def create_game
    map = Map.new(16)
  end
  def run
  end
end