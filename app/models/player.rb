
class Player < Character
  def initialize
    super
    @health = 100
    @strength = 30
  end

  def acquire_gems(number)
    self.gems += number
  end
end
