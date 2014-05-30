
class Character
  attr_accessor :gems, :health
  def initialize
    @gems = 0
  end

  def alive?
    health > 0
  end

  def damage_for(health_points)
    @health -= health_points
  end

  def dead?
    not alive?
  end

  def fight(enemy)
    enemy.damage_for(strength)
  end
end
