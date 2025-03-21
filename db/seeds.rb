require "faker"

User.destroy_all
Job.destroy_all
PsyProfile.destroy_all

PSY_PROFILE = [
  { name: "Analytique et logique", description: "Esprit rationnel, structuré et curieux. Tu aimes analyser, résoudre des problèmes et travailler avec des données concrètes. La logique et la précision sont tes atouts." },
  { name: "Creatif et innovant", description: "Imagination débordante, esprit artistique et original. Tu aimes créer, innover et exprimer des idées à travers différents supports." },
  { name: "Manuel et concret", description: "Habileté technique, pragmatisme et précision. Tu préfères le concret, travailler avec tes mains et voir le résultat de ton travail." },
  { name: "Organisateur et gestionnaire", description: "Leadership, sens de l’organisation et prise de décision. Tu aimes structurer, gérer des projets et coordonner des équipes." },
  { name: "Empathique et altruiste", description: "Écoute, bienveillance et envie d’aider les autres. Tu trouves du sens dans le contact humain et l’accompagnement." }
]

PSY_PROFILE.each do |profile|
  PsyProfile.create!(
    name: profile[:name],
    description: profile[:description]
  )
end

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "secret",
    psy_profile: PsyProfile.first,
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
    address: Faker::Address.full_address,
    #latitude: Faker::Address.latitude,
    #longitude: Faker::Address.longitude,
    evaluation_completed: false
  )
  file = URI.parse("https://tse4.mm.bing.net/th?id=OIP.ry0FnYNVVc6OOFGJhoPRKAHaI0&pid=Api").open
  user.photo.attach(io: file, filename: "avatar", content_type: "image/png")
end



JOBS = [
  # Profil A - Analytique et logique
  { title: "Ingénieur en informatique", sector: "Technologie", domain: "Informatique" },
  { title: "Data Analyst", sector: "Analyse de données", domain: "Statistiques" },
  { title: "Consultant en stratégie", sector: "Conseil", domain: "Gestion" },
  { title: "Actuaire", sector: "Finance", domain: "Mathématiques appliquées" },
  { title: "Chercheur en sciences", sector: "Recherche", domain: "Sciences" },
  { title: "Développeur web", sector: "Technologie", domain: "Programmation" },

  # Profil B - Créatif et innovant
  { title: "Designer graphique", sector: "Communication visuelle", domain: "Design" },
  { title: "Architecte", sector: "Construction", domain: "Architecture" },
  { title: "Illustrateur", sector: "Arts", domain: "Illustration" },
  { title: "Publicitaire", sector: "Marketing", domain: "Publicité" },
  { title: "Scénariste", sector: "Cinéma et TV", domain: "Écriture" },
  { title: "Styliste de mode", sector: "Mode", domain: "Création textile" },

  # Profil C - Manuel et concret
  { title: "Menuisier", sector: "Artisanat", domain: "Travail du bois" },
  { title: "Mécanicien automobile", sector: "Transport", domain: "Mécanique" },
  { title: "Chef de chantier", sector: "Construction", domain: "Gestion de projet" },
  { title: "Cuisinier", sector: "Restauration", domain: "Gastronomie" },
  { title: "Électricien", sector: "BTP", domain: "Électricité" },
  { title: "Technicien en maintenance industrielle", sector: "Industrie", domain: "Maintenance" },

  # Profil D - Organisateur et gestionnaire
  { title: "Chef de projet", sector: "Gestion", domain: "Management" },
  { title: "Manager d’entreprise", sector: "Business", domain: "Entrepreneuriat" },
  { title: "Responsable événementiel", sector: "Événementiel", domain: "Organisation" },
  { title: "Entrepreneur", sector: "Business", domain: "Création d'entreprise" },
  { title: "Agent immobilier", sector: "Immobilier", domain: "Vente" },
  { title: "Administrateur réseau", sector: "Informatique", domain: "Systèmes et réseaux" },

  # Profil E - Empathique et altruiste
  { title: "Psychologue", sector: "Santé", domain: "Psychologie" },
  { title: "Travailleur social", sector: "Aide sociale", domain: "Accompagnement" },
  { title: "Infirmier(ère)", sector: "Santé", domain: "Soins médicaux" },
  { title: "Coach de vie", sector: "Développement personnel", domain: "Coaching" },
  { title: "Professeur", sector: "Éducation", domain: "Enseignement" },
  { title: "Médiateur familial", sector: "Justice", domain: "Résolution de conflits" }
]

JOBS.each do |job|
  Job.create!(
    title: job[:title],
    description: "Description détaillée du métier de #{job[:title]}.",
    sector: job[:sector],
    latitude: 48.8566, # Coordonnées de Paris par défaut
    longitude: 2.3522,
    psy_profile: PsyProfile.all.sample, # ID du profil psychologique correspondant
    domain: job[:domain]
  )
end



puts "✅ #{User.count} utilisateurs créés! 🎉"
puts "✅ #{Job.count} fiches métiers créées avec succès ! 🥳"
