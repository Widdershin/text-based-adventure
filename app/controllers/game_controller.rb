
class GameController
  attr_reader :player, :current_room, :view

  def initialize
    @player = Player.new
    @current_room = Room.new(description: 'You are in a test room. The walls are a faded white, and there is no exit you can see. Cry.', gems: 9,  directions: {north:nil,south:nil})
    @current_room.set_enemy(Goblin.new)
    @view = ConsoleView.new
  end

  def look
    view.display_room_info(current_room)
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
    view.fight_enemy(player, enemy)
  end

  def display_player_info
    view.display_player_info(player)
  end

  def attack_player
    enemy.fight(player)
    view.attacked_by_enemy(enemy)
  end

  def end_of_turn
    if !enemy.nil?
      if enemy.dead?
        kill_enemy
      else
        attack_player
      end
    end
  end

  def kill_enemy
    view.enemy_dead(enemy)
    current_room.kill_enemy
  end
end
