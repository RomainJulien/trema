class Answer < ApplicationRecord
  belongs_to :user

  validates :question_number, presence: true
  validates :answer_number, presence: true
end
