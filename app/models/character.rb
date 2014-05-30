
class Character
  attr_accessor :gems, :health
  def initialize
    @gems = 0
  end

  def alive?
  end

  def damage_for(health_points)
    @health -= health_points
  end

end
