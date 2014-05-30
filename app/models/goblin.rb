class Goblin < Enemy
  def initialize
    super
    @health = 50
    @strength = 20
  end

  def to_s
    "Goblin"
  end
end
