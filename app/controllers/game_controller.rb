
class GameController
  attr_reader :player, :current_room, :view
  attr_accessor :room_to_move_to

  def initialize
    @player = Player.new

    # TODO: Make rooms not hardcoded

    second_room = Room.new(description: "This room is much more pleasant than the last one. Until you saw the Juggalo in the corner, that is.", gems:15)
    second_room.set_enemy(Juggalo.new)

    @current_room = Room.new(description: 'You are in a test room. The walls are a faded white, and there is an exit to the east. Cry.', gems: 9)
    @current_room.set_enemy(Goblin.new)

    @current_room.directions = {east: second_room}

    second_room.directions = {west: @current_room}

    @room_to_move_to = current_room

    @view = ConsoleView.new
  end

  def go(direction_symbol)
    self.room_to_move_to = current_room.directions[direction_symbol]
  end

  def change_room(new_room)
    @current_room = new_room
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

    change_room(room_to_move_to)
  end

  def kill_enemy
    view.enemy_dead(enemy)
    current_room.kill_enemy
    player.enemies_killed += 1
  end
end
