
class ConsoleView
  def display_room_info(room)
    puts room.description
    puts "There are #{room.gems} gems in this room."
    if room.enemy
      puts "There is a #{room.enemy} in the room! It has #{room.enemy.health} health!"
    end
  end

  def display_player_info(player)
    puts "Health: #{player.health}, Gems: #{player.gems}"
  end
end
