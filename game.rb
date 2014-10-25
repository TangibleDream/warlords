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
    mapsquare_0_0 = Mapsquare.new('grass', 0, 0)
    mapsquare_0_1 = Mapsquare.new('grass', 0, 1)
    mapsquare_0_2 = Mapsquare.new('grass', 0, 2)
    mapsquare_0_3 = Mapsquare.new('grass', 0, 3)
    mapsquare_1_0 = Mapsquare.new('grass', 1, 0)
    mapsquare_1_1 = Mapsquare.new('castle', 1, 1)
    mapsquare_1_2 = Mapsquare.new('castle', 1, 2)
    mapsquare_1_3 = Mapsquare.new('grass', 1, 3)
    mapsquare_2_0 = Mapsquare.new('grass', 2, 0)
    mapsquare_2_1 = Mapsquare.new('castle', 2, 1)
    mapsquare_2_2 = Mapsquare.new('castle', 2, 2)
    mapsquare_2_3 = Mapsquare.new('grass', 2, 3)
    mapsquare_3_0 = Mapsquare.new('grass', 3, 0)
    mapsquare_3_1 = Mapsquare.new('grass', 3, 1)
    mapsquare_3_2 = Mapsquare.new('grass', 3, 2)
    mapsquare_3_3 = Mapsquare.new('grass', 3, 3)
  end
  def run
  end
end