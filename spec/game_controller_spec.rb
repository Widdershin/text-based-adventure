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

  it 'lets the player fight the enemy' do
    enemy_health = @controller.enemy.health

    @controller.fight

    expect(@controller.enemy.health).to eq (enemy_health - @controller.player.strength)
  end

  it 'lets the enemy fight the player' do
    player_health = @controller.player.health

    @controller.attack_player

    expect(@controller.player.health).to eq (player_health - @controller.enemy.strength)
  end
end
