
class Player < Character

  attr_accessor :enemies_killed

  def initialize
    super
    @health = 100
    @strength = 30
    @enemies_killed = 0
  end

  def acquire_gems(number)
    self.gems += number
  end
end
