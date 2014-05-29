
require 'spec_helper'

describe CommandController do
  before do
    @controller = CommandController.new
  end

  it 'should have a game controller' do
    expect(@controller.game_controller).to be_a(GameController)
  end

  describe 'split_input' do
    it 'will split input into command and argument' do
      expect(@controller.split_input('go east')).to eq ['go', 'east']
    end
  end

  describe 'commands' do
    it 'should route the look command' do
      @controller.game_controller.should_receive(:look)
      @controller.route_command('look')
    end

    it 'should route the loot command' do
      @controller.game_controller.should_receive(:loot)
      @controller.route_command('loot')
    end

    it 'should route the go command' do
      @controller.game_controller.should_receive(:go).with(:east)
      @controller.route_command('go east')
    end
  end
end
