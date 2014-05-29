class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :player_name
      t.integer :score
      t.integer :treasure_collected
      t.integer :enemies_killed

      t.timestamps
    end
  end
end
