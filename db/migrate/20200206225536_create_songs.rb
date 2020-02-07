class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
