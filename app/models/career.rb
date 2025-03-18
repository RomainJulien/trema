class Career < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :steps

  validates :progression, presence: true
end
