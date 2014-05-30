
class GameController
  attr_reader :player, :current_room

  def initialize
    @player = Player.new
    @current_room = Room.new(description: 'test room', gems: 9,  directions: {north:nil,south:nil})
    @current_room.set_enemy(Enemy.new)
  end

  def loot
    player.acquire_gems(current_room.gems)
    current_room.loot
  end

  def enemy
    current_room.enemy
  end

  def fight
    @player.fight(enemy)
  end
end
