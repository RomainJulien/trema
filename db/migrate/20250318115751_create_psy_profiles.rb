class CreatePsyProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :psy_profiles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
