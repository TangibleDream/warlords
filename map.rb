class Map
  def initialize(squares)
    @side = Math.sqrt(squares).to_i
    @squares = squares
  end
  def get_squares
    @squares
  end
  def get_side
    @side
  end
end