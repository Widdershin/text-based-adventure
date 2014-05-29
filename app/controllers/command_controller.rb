
class CommandController
  attr_reader :game_controller
  def initialize
    @game_controller = GameController.new
  end

  def route_command(command)
    @game_controller.look
  end
end
