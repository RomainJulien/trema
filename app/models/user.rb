class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :answers, dependent: :destroy

  #has_one :psy_profile

  belongs_to :psy_profile, optional: true
  has_many :favorites, dependent: :destroy
  has_one :career, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true

  def update_profile_psy
    self.psy_profile_id = PsyProfile.find_by(name: "Explorateur(trice)")&.id
    save
  end
end
