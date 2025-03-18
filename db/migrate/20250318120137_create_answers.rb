class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.integer :question_number
      t.integer :answer_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
