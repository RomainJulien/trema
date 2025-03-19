class Answer < ApplicationRecord
  belongs_to :user

  validates :question_number, presence: true
  validates :answer_number, presence: true

  QUIZZ = [
    {
      question: "Lorsque vous abordez un nouveau projet ou un problème à résoudre, quelle est votre approche ?",
      answers: {
        "J’analyse les données et établis une logique claire avant d’agir." => 1,
        "J’explore plusieurs idées créatives avant de choisir la meilleure." => 2,
        "Je commence directement par expérimenter et tester des solutions concrètes." => 3,
        "J’organise un plan détaillé avec des étapes bien définies." => 4,
        "Je réfléchis à l’impact humain et m’assure que cela profite aux autres." => 5,
      }
    },
    {
      question: "Si vous pouviez choisir votre environnement de travail idéal, ce serait…",
      answers: {
        "Un bureau avec des outils analytiques et des données à traiter." => 1,
        "Un atelier ou un studio artistique pour exprimer ma créativité." => 2,
        "Un lieu où je peux travailler avec mes mains et fabriquer des choses." => 3,
        "Un espace organisé avec un planning précis et une gestion efficace." => 4,
        "Un endroit où je peux interagir avec les gens et les aider au quotidien." => 5,
      }
    },
    {
      question: "Quel type de livre ou de contenu aimez-vous consommer ?",
      answers: {
        "Des ouvrages scientifiques, des essais logiques et des articles analytiques." => 1,
        "Des romans fantastiques, de la science-fiction ou des livres inspirants." => 2,
        "Des guides pratiques, des manuels et des vidéos de bricolage." => 3,
        "Des livres sur le développement personnel, l’organisation et la gestion du temps." => 4,
        "Des récits de vie, des témoignages et des ouvrages sur l’humain et la psychologie." => 5,
      }
    },
    {
      question: "Face à un défi inattendu, comment réagissez-vous ?",
      answers: {
        "J’analyse la situation, trouve les causes et applique une solution logique." => 1,
        "J’essaie de penser différemment et trouve une approche originale." => 2,
        "Je passe immédiatement à l’action pour voir ce qui fonctionne." => 3,
        "Je mets en place un plan structuré et distribue les responsabilités." => 4,
        "Je demande l’avis des autres et cherche une solution qui satisfait tout le monde." => 5,
      }
    },
    {
      question: "Quelle activité vous procure le plus de satisfaction ?",
      answers: {
        "Résoudre des casse-têtes, des énigmes ou des problèmes logiques." => 1,
        "Créer une œuvre, inventer quelque chose ou innover dans un domaine." => 2,
        "Construire, réparer, manipuler des objets concrets." => 3,
        "Organiser un événement, gérer un projet, structurer une équipe." => 4,
        "Écouter, conseiller, aider quelqu’un à surmonter ses difficultés." => 5,
      }
    },
    {
      question: "Comment vos proches vous décrivent-ils le plus souvent ?",
      answers: {
        "Intelligent(e), réfléchi(e), logique." => 1,
        "Original(e), imaginatif(ve), créatif(ve)." => 2,
        "Pratique, efficace, manuel(le)." => 3,
        "Organisé(e), méthodique, fiable." => 4,
        "À l’écoute, bienveillant(e), compréhensif(ve)." => 5,
      }
    }
  ]

end
