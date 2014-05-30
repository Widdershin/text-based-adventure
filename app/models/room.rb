require 'pry'

class Room
  attr_reader :description, :gems
  attr_accessor :enemy, :directions

  POSSIBLE_DIRECTIONS = [:north,:south,:east,:west,:up,:down]

  def initialize(args)
    @description = args.fetch(:description)
    @gems = args.fetch(:gems, 0)
    @enemy = nil
    @directions = args.fetch(:directions)
  end

  def set_enemy(enemy)
    self.enemy = enemy
  end

  def loot
    @gems = 0
  end


  def list_directions
    @directions.keys[0]
  end


  def kill_enemy
    self.enemy = nil
  end

end
