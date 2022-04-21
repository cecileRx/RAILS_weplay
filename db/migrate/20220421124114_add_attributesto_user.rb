class AddAttributestoUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :about, :text
    add_column :users, :level, :string
    add_column :users, :spirit, :string
    add_column :users, :favourite_locations, :text, array: true
  end
end
