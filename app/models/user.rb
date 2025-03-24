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

    # Récupérer toutes les réponses de l'utilisateur
    answers = self.answers.pluck(:answer_number)
    # Vérifier s'il y a des réponses avant de continuer
    return if answers.empty?
    # Compter les occurrences de chaque réponse (de 1 à 6)
    counts = answers.tally
    # Trouver la réponse la plus fréquente
    most_frequent_answer = counts.max_by { |_, count| count }[0]
    # Associer chaque réponse au bon profil (1 -> premier profil, 2 -> deuxième, etc.)
    profiles = PsyProfile.all
    selected_profile = profiles[most_frequent_answer - 1] # -1 car index commence à 0
    # Mettre à jour l'utilisateur avec le profil trouvé
    self.psy_profile_id = selected_profile.id
    save
  end

  #def update_profile_psy
  #  self.psy_profile_id = PsyProfile.find_by(name: "Manuel et concret")&.id
  #  save
  #end

end
