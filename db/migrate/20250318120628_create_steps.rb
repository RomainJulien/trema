class CreateSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :order
      t.references :career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
