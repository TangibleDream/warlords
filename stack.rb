class Stack
  def initialize(unit, locx, locy)
    @stack = [unit]
    @locx = locx
    @locy = locy
    @strbonus = 0
    @movbonus = 0
    @seigebonus = 0
    @flightbonus = false
  end
  def add_unit(unit)
    @stack << unit
  end
  def delete_unit(unit)
    @stack.delete(unit)
  end
  def get_stack
    @stack
  end
  def set_xy(x, y)
    @locx = x
    @locy = y
  end
  def get_x
    @locx
  end
  def get_y
    @locy
  end
  def set_strength_bonus(bonus)
    @strbonus = bonus
  end
  def get_strength_bonus
    @strbonus
  end
  def set_move_bonus(bonus)
    @movbonus = bonus
  end
  def get_move_bonus
    @movbonus
  end
  def set_seige_bonus(bonus)
    @seigebonus = bonus
  end
  def get_seige_bonus
    @seigebonus
  end
  def set_flight_bonus(bonus)
    @flightbonus = bonus
  end
  def get_flight_bonus
    @flightbonus
  end
end