class Answer < ApplicationRecord
  belongs_to :user

  validates :question_number, presence: true
  validates :answer_number, presence: true
end

QUIZZ = {
  question_1: {
    question: "Lorsque vous abordez un nouveau projet ou un problème à résoudre, quelle est votre approche ?",
    answers: {
      A: { text: "J’analyse les données et établis une logique claire avant d’agir.", profile: :analytique_logique },
      B: { text: "J’explore plusieurs idées créatives avant de choisir la meilleure.", profile: :creatif_innovant },
      C: { text: "Je commence directement par expérimenter et tester des solutions concrètes.", profile: :manuel_concret },
      D: { text: "J’organise un plan détaillé avec des étapes bien définies.", profile: :organisateur_gestionnaire },
      E: { text: "Je réfléchis à l’impact humain et m’assure que cela profite aux autres.", profile: :empathique_altruiste}
    }
  },

  question_2: {
    question: "Si vous pouviez choisir votre environnement de travail idéal, ce serait…",
    answers: {
      A: { text: "Un bureau avec des outils analytiques et des données à traiter.", profile: :analytique_logique },
      B: { text: "Un atelier ou un studio artistique pour exprimer ma créativité.", profile: :creatif_innovant },
      C: { text: "Un lieu où je peux travailler avec mes mains et fabriquer des choses.", profile: :manuel_concret },
      D: { text: "Un espace organisé avec un planning précis et une gestion efficace.", profile: :organisateur_gestionnaire },
      E: { text: "Un endroit où je peux interagir avec les gens et les aider au quotidien.", profile: :empathique_altruiste}
      }
  },

  question_3: {
    question: "Quel type de livre ou de contenu aimez-vous consommer ?",
    answers: {
      A: { text: "Des ouvrages scientifiques, des essais logiques et des articles analytiques.", profile: :analytique_logique },
      B: { text: "Des romans fantastiques, de la science-fiction ou des livres inspirants.", profile: :creatif_innovant },
      C: { text: "Des guides pratiques, des manuels et des vidéos de bricolage.", profile: :manuel_concret },
      D: { text: "Des livres sur le développement personnel, l’organisation et la gestion du temps.", profile: :organisateur_gestionnaire },
      E: { text: "Des récits de vie, des témoignages et des ouvrages sur l’humain et la psychologie.", profile: :empathique_altruiste}
      }
  },

  question_4: {
    question: "Face à un défi inattendu, comment réagissez-vous ?",
    answers: {
      A: { text: "J’analyse la situation, trouve les causes et applique une solution logique.", profile: :analytique_logique },
      B: { text: "J’essaie de penser différemment et trouve une approche originale.", profile: :creatif_innovant },
      C: { text: "Je passe immédiatement à l’action pour voir ce qui fonctionne.", profile: :manuel_concret },
      D: { text: "Je mets en place un plan structuré et distribue les responsabilités.", profile: :organisateur_gestionnaire },
      E: { text: "Je demande l’avis des autres et cherche une solution qui satisfait tout le monde.", profile: :empathique_altruiste}
      }
  },

  question_5: {
    question: "Quelle activité vous procure le plus de satisfaction ?",
    answers: {
      A: { text: "Résoudre des casse-têtes, des énigmes ou des problèmes logiques.", profile: :analytique_logique },
      B: { text: "Créer une œuvre, inventer quelque chose ou innover dans un domaine.", profile: :creatif_innovant },
      C: { text: "Construire, réparer, manipuler des objets concrets.", profile: :manuel_concret },
      D: { text: "Organiser un événement, gérer un projet, structurer une équipe.", profile: :organisateur_gestionnaire },
      E: { text: "Écouter, conseiller, aider quelqu’un à surmonter ses difficultés.", profile: :empathique_altruiste}
      }
  },

  question_6: {
    question: "Comment vos proches vous décrivent-ils le plus souvent ?",
    answers: {
      A: { text: "Intelligent(e), réfléchi(e), logique.", profile: :analytique_logique },
      B: { text: "Original(e), imaginatif(ve), créatif(ve).", profile: :creatif_innovant },
      C: { text: "Pratique, efficace, manuel(le).", profile: :manuel_concret },
      D: { text: "Organisé(e), méthodique, fiable.", profile: :organisateur_gestionnaire },
      E: { text: "À l’écoute, bienveillant(e), compréhensif(ve).", profile: :empathique_altruiste}
      }
  },
}
