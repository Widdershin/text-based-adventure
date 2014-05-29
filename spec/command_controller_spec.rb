
require 'spec_helper'

describe CommandController do
  before do
    @controller = CommandController.new
  end

  it 'should have a game controller' do
    expect(@controller.game_controller).to be_a(GameController)
  end
  it 'should route the look command' do
    @controller.game_controller.should_receive(:look)
    @controller.route_command('look')
  end
end
