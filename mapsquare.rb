class Mapsquare
  def initialize(terrain, x, y)
    @terrain = terrain
    @x = x
    @y = y
  end
  def set_terrain(terrain)
    @terrain = terrain
  end
  def get_terrain
    @terrain
  end
  def get_x
    @x
  end
  def get_y
    @y
  end
end