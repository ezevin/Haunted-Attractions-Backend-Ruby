class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.integer :attraction_id

      t.timestamps
    end
  end
end
