class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :location
      t.string :image
    end
  end
end
