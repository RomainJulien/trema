class Step < ApplicationRecord
  belongs_to :career

  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :order, presence: true, numericality: true
end
