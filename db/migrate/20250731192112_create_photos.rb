class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :photo_timestamp
      t.string :tz
      t.string :latitude
      t.string :longitude
      t.integer :temperature
      t.string :condition

      t.timestamps
    end
  end
end
