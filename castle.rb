class Castle
  def initialize(name = "", locx, locy, lev, type, income)
    puts 'Name your capitol!' if name == ""
    @name = gets.chomp if name == ""
    @name = name if name != ""
    @owner = "unowned"
    @locx = locx
    @locy = locy
    @lev = lev
    @type = type
    @income = income
  end
  def get_name
    @name
  end
  def set_owner(owner)
    @owner = owner
  end
  def get_owner
    @owner
  end
  def get_x
    @locx
  end
  def get_y
    @locy
  end
  def get_lev
    @lev
  end
  def get_type
    @type
  end
  def get_income
    @income
  end
end