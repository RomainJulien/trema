class PsyProfile < ApplicationRecord
  has_many :jobs
  has_many :users

  validates :name, presence: true
  validates :description, presence: true
end
