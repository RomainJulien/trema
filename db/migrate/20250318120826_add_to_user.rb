class AddToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :address, :string
    add_column :users, :evaluation_completed, :boolean
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_reference :users, :psy_profile, null: false, foreign_key: true
  end
end
