
require 'spec_helper'

describe CommandController do
  before do
    @controller = CommandController.new
  end

  it 'should have a game controller' do
    expect(@controller.game_controller).to be_a(GameController)
  end
end
