
class CommandController
  attr_reader :game_controller
  def initialize
    @game_controller = GameController.new
  end

  def route_command(command)
    command, argument = split_input(command)
    case command
      when 'look'
        game_controller.look
      when 'loot'
        game_controller.loot
      when 'go'
        game_controller.go(argument.to_sym)
    end
  end

  def split_input(command)
    command.split(' ')
  end
end
