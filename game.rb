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
    x = 0
    y = 0
    ma = []
    while x < 4
      y = 0 if y > 3
      ma << Mapsquare.new('grass', x, y)
      y = y + 1
      if y > 3
        y = 0
        x = x + 1
      end
    end
    ma[5].set_terrain('castle')
    ma[6].set_terrain('castle')
    ma[9].set_terrain('castle')
    ma[10].set_terrain('castle')
    map.set_map(ma)
  end
  def run
  end
end