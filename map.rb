class Map
  def initialize(squares)
    @side = Math.sqrt(squares).to_i
    @squares = squares
    @map_array = []
  end
  def get_squares
    @squares
  end
  def get_side
    @side
  end
  def set_map(arr)
    @map_array = arr
  end
  def get_map
    @map_array
  end
end