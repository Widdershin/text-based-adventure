
class Player < Character
  attr_reader :strength
  def initialize
    super
    @health = 100
    @strength = 30
  end

  def acquire_gems(number)
    self.gems += number
  end
end
