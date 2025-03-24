class Answer < ApplicationRecord
  belongs_to :user

  validates :question_number, presence: true
  validates :answer_number, presence: true

  QUIZZ = [
    {
      question: "Tu démarres une nouvelle activité, tu préfères :",
      answers: {
        "Suivre un plan précis et organisé." => 1,
        "Expérimenter et ajuster au fur et à mesure." => 2,
        "Collaborer avec d’autres et échanger des idées." => 3,
        "Trouver des solutions créatives et innovantes." => 4,
        "Agir rapidement et apprendre sur le tas." => 5,
      }
    },
    {
      question: "Dans un projet, tu es plutôt :",
      answers: {
        "Celui/celle qui structure et planifie tout." => 1,
        " Celui/celle qui explore toutes les possibilités." => 2,
        "Celui/celle qui motive l’équipe et facilite le travail en groupe." => 3,
        "Celui/celle qui pense hors des sentiers battus." => 4,
        "Celui/celle qui se lance sans trop réfléchir." => 5,
      }
    },
    {
      question: "Ton environnement de travail idéal, c’est :",
      answers: {
        "Stable, avec des règles claires et des objectifs précis." => 1,
        "Flexible, où tu peux tester différentes choses." => 2,
        "Social, avec beaucoup d’interactions." => 3,
        "Stimulant, où tu peux exprimer ta créativité" => 4,
        "Dynamique, où les choses bougent vite." => 5,
      }
    },
    {
      question: "On te décrit plutôt comme quelqu’un de :",
      answers: {
        "Fiable et organisé(e)." => 1,
        "Curieux(se) et analytique." => 2,
        "Chaleureux(se) et empathique." => 3,
        "Créatif(ve) et original(e)." => 4,
        "Spontané(e) et énergique." => 5,
      }
    },
    {
      question: "Quand tu dois apprendre quelque chose de nouveau, tu préfères :",
      answers: {
        "Suivre une formation bien structurée." => 1,
        "Lire, faire des recherches, creuser à fond." => 2,
        "En discuter avec d’autres et apprendre en groupe." => 3,
        "Tester directement en mode créatif." => 4,
        "Plonger dedans et apprendre en faisant." => 5,
      }
    },
    {
      question: "Ton plus grand atout, c’est :",
      answers: {
        "Ta rigueur et ton sens de l’organisation." => 1,
        "Ta curiosité et ton esprit d’analyse." => 2,
        "Ton sens du relationnel et de la communication." => 3,
        "Ta créativité et ton imagination." => 4,
        "Ton audace et ta réactivité." => 5,
      }
    }
  ]

end
