class Record  < ActiveRecord::Base

  attr_reader :player_name, :treasure_collected, :enemies_killed, :score

#validations

  def initialize(player_name:nil, treasure_collected:0, enemies_killed:0)
    @player_name = player_name
    @treasure_collected = treasure_collected
    @enemies_killed = enemies_killed
    @score = calculate_score
  end

  def calculate_score
    @treasure_collected * @enemies_killed
  end
end
