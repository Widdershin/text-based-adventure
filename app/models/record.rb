class Record  < ActiveRecord::Base

  def self.new_score(player_name:nil, treasure_collected:0, enemies_killed:0)
    new_record = Record.new

    new_record.assign_attributes({
        player_name: player_name,
        treasure_collected: treasure_collected,
        enemies_killed: enemies_killed,
        score: treasure_collected * enemies_killed
      })

    new_record.save!
    new_record

    # raise new_record.inspect
  end
end
