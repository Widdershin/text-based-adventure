class Juggalo < Enemy
  def initialize
    super
    @health = 40
    @strength = 15
  end

  def to_s
    'Juggalo'
  end
end
