require 'spec_helper'

describe GameController do
  before do
    @controller = GameController.new
  end

  it 'should have a player' do
    expect(@controller.player).to be_a Player
  end

  it 'should have a current room' do
    expect(@controller.current_room).to be_a Room
  end
end
