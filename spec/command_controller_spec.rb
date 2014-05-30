
require 'spec_helper'

describe CommandController do
  before do
    @controller = CommandController.new
  end

  it 'should have a game controller' do
    expect(@controller.game_controller).to be_a(GameController)
  end

  describe 'split_input' do
    it 'will split multi word input into command and argument' do
      expect(@controller.split_input('go super east')).to eq ['go', 'super east']
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

    it 'should route the fight command' do
      @controller.game_controller.should_receive(:fight)
      @controller.route_command('fight')
    end
  end

  it 'can ask the game controller for available commands' do
    @controller.game_controller.should_receive(:available_commands)
    @controller.get_commands
  end
end
