class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :player_id
      t.integer :location_id
      t.string :time
      
      t.timestamps
    end
  end
end
