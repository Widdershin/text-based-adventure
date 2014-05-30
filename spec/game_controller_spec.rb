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

  it 'loots the current_room' do
    player_gems = @controller.player.gems
    room_gems = @controller.current_room.gems
    @controller.loot
    expect(@controller.player.gems).to eq(player_gems + room_gems)
    expect(@controller.current_room.gems).to eq 0
  end
end
