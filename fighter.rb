class Fighter
  def set_cost(cost)
    @cost = cost
  end
  def get_cost(cost)
    @cost
  end
  def set_strength(str)
    @strength = str
  end
  def get_strength
    @strength
  end
  def set_moves_per_turn(mpt)
    @moves_per_turn = mpt
  end
  def get_moves_per_turn
    @moves_per_turn
  end
  def set_moves(moves)
    @moves = moves
  end
  def get_moves
    @moves
  end
  def set_maximum_hit_points(mhp)
    @maximumhitpoints = mhp
  end
  def get_maximum_hit_points
    @maximumhitpoints
  end
  def set_hit_points(hp)
    @hitpoints = hp
  end
  def get_hit_points
    @hitpoints
  end
  # add bonuses logic
end