class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :date
      t.string :time
      t.integer :artist_id
      t.integer :venue_id
    end
  end
end
