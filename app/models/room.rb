
class Room
  attr_reader :description, :enemies, :gems
  def initialize(args)
    @description = args.fetch(:description)
    @gems = args.fetch(:gems, 0)
    @enemies = []
  end

  def add_enemy(enemy)
    enemies << enemy
  end

  def loot
    @gems = 0
  end
end
