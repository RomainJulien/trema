class Job < ApplicationRecord
  belongs_to :psy_profile
  has_many :careers, dependent: :destroy
  has_many :users, through: :careers

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :sector, presence: true
  validates :domain, presence: true
end
