class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.string :data
      t.string :time
      t.string :date
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
