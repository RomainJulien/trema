class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :sector
      t.string :address
      t.string :domain
      t.float :latitude
      t.float :longitude
      t.references :psy_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
