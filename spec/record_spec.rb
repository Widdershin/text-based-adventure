require 'rspec'
require 'spec_helper'
require_relative '../app/models/record'

describe Record do

  it 'has a player name' do
    record = Record.new(player_name:'Player1')
    expect(record.player_name).to eq('Player1')
  end

  it 'score will be gems * enemies' do
    record = Record.new(player_name:"Player1", treasure_collected:33, enemies_killed:15)
    expect(record.score).to eq(495)
  end
end
