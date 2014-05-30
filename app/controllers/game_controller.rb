
class GameController
  attr_reader :player, :current_room

  def initialize
    @player = Player.new
    @current_room = Room.new(description: 'test room', gems: 9)
  end
end
