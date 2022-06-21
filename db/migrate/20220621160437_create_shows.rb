class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.datetime :date
      t.integer :artist_id
      t.integer :venue_id
    end
  end
end
