
class Room
  attr_reader :description, :gems
  attr_accessor :enemy
  attr_accessor :directions
  def initialize(args)
    @description = args.fetch(:description)
    @gems = args.fetch(:gems, 0)
    @enemy = nil
  end

  def set_enemy(enemy)
    self.enemy = enemy
  end

  def loot
    @gems = 0
  end

  def kill_enemy
    self.enemy = nil
  end
end
