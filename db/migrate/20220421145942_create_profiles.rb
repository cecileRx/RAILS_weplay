class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.text :about
      t.string :level
      t.string :spirit
      t.string :favourite_locations, array: true
      t.belongs_to :user
      t.timestamps
    end
  end
end
