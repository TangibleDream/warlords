require 'json'
require 'colorize'
class Map
  def initialize(squares)
    @side = Math.sqrt(squares).to_i
    @squares = squares
    @map_array = []
    if squares == 16
      x = 0
      y = 0
      while x < 4
        y = 0 if y > 3
        @map_array << Mapsquare.new('grass', x, y)
        y = y + 1
        if y > 3
          y = 0
          x = x + 1
        end
      end
      @map_array[5].set_terrain('castle')
      @map_array[6].set_terrain('castle')
      @map_array[9].set_terrain('castle')
      @map_array[10].set_terrain('castle')
      savemap(@map_array)
    end
  end
  def get_squares
    @squares
  end
  def get_side
    @side
  end
  def loadmap
    f = File.open('map.json', 'r')
    m = JSON.load(f)
    v = m['map'].values
    x = 0
    y = 0
    @map_array = []
    v.each do |t|
      terrain = 'grass' if t == 'G'
      terrain = 'castle' if t == 'C'
      @map_array << Mapsquare.new(terrain, x, y)
      x = x + 1
      if x == 4
        x = 0
        y = y + 1
      end
    end
  end
  def savemap(map)
    fileout = File.open('map.json', 'w')
    fileout.write"{\n"
    fileout.write"   \"map\" :\n"
    fileout.write"      {\n"
    x = 1
    map.each do |mapsqr|
      terrain = "G" if mapsqr.get_terrain == 'grass'
      terrain = "C" if mapsqr.get_terrain == 'castle'
      fileout.write"         \"#{x.to_s}\" : \"#{terrain}\",\n" if x < map.count
      fileout.write"         \"#{x.to_s}\" : \"#{terrain}\"\n" if x == map.count
      x = x + 1
    end
    fileout.write"      }\n"
    fileout.write"}"
    fileout.close
  end
  def set_map(arr)
    @map_array = arr
  end
  def get_map
    @map_array
  end
  def show
    @map_array.each do |mapsqr|
      print "\n" if mapsqr.get_x == 0
      print 'G' if mapsqr.get_terrain == "grass"
      print 'C' if mapsqr.get_terrain == "castle"
    end
    String.colors
    print "\n"
  end
end