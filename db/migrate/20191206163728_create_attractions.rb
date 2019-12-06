class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code
      t.string :attraction_type
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
