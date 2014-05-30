
class GameController
  attr_reader :player

  def initialize
    @player = Player.new
  end
end
