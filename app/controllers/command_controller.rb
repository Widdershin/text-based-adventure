
class CommandController
  attr_reader :game_controller
  def initialize
    @game_controller = GameController.new
  end
end
