
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
      when 'fight'
        game_controller.fight(argument)
    end
  end

  def split_input(command)
    (split_command, *arguments) = command.split(' ')
    argument = arguments.join(' ')

    [split_command, argument]
  end
end
