
class Room
  attr_reader :description, :enemies
  def initialize(args)
    @description = args.fetch(:description)
    @enemies = []
  end

  def add_enemy(enemy)
    enemies << enemy
  end
end
