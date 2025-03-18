class CreateCareers < ActiveRecord::Migration[7.1]
  def change
    create_table :careers do |t|
      t.string :progression
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
