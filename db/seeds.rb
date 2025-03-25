require "faker"

User.destroy_all
Job.destroy_all
PsyProfile.destroy_all

PSY_PROFILE = [
  { name: "Organisé(e)", description: "Tu aimes que les choses soient claires, précises et bien structurées.Tu es fiable, méthodique et excellent(e) pour gérer des projets." },
  { name: "Pragmatique", description: "Tu es curieux(se) et manuel(le), tu aimes apprendre et comprendre comment les choses fonctionnent. Tu préfères tester différentes options avant de faire un choix." },
  { name: "Social(e)", description: "Tu es tourné(e) vers les autres et tu as un excellent relationnel. Tu aimes travailler en équipe et motiver les gens autour de toi." },
  { name: "Créatif(ve)", description: "Tu penses hors des sentiers battus et tu cherches à innover. Tu aimes créer, imaginer et explorer de nouvelles idées." },
  { name: "Entreprenant(e)", description: "Tu es rapide, pragmatique et tu préfères agir plutôt que réfléchir trop longtemps. Tu prends des risques et tu n’as pas peur de l’échec." }
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
  # Profil A - Organisé(e)
  { title: "Ingénieur en informatique", sector: "Technologie", domain: "Informatique" },
  { title: "Data Analyst", sector: "Analyse de données", domain: "Statistiques" },
  { title: "Consultant en stratégie", sector: "Conseil", domain: "Gestion" },
  { title: "Actuaire", sector: "Finance", domain: "Mathématiques appliquées" },
  { title: "Chercheur en sciences", sector: "Recherche", domain: "Sciences" },
  { title: "Développeur web", sector: "Technologie", domain: "Programmation" },

  # Profil B - Créatif(ve)
  { title: "Designer graphique", sector: "Communication visuelle", domain: "Design" },
  { title: "Architecte", sector: "Construction", domain: "Architecture" },
  { title: "Illustrateur", sector: "Arts", domain: "Illustration" },
  { title: "Publicitaire", sector: "Marketing", domain: "Publicité" },
  { title: "Scénariste", sector: "Cinéma et TV", domain: "Écriture" },
  { title: "Styliste de mode", sector: "Mode", domain: "Création textile" },

  # Profil C - Pragmatique
  { title: "Menuisier", sector: "Artisanat", domain: "Travail du bois" },
  { title: "Mécanicien automobile", sector: "Transport", domain: "Mécanique" },
  { title: "Chef de chantier", sector: "Construction", domain: "Gestion de projet" },
  { title: "Cuisinier", sector: "Restauration", domain: "Gastronomie" },
  { title: "Électricien", sector: "BTP", domain: "Électricité" },
  { title: "Technicien en maintenance industrielle", sector: "Industrie", domain: "Maintenance" },

  # Profil D - Entreprenant(e)
  { title: "Chef de projet", sector: "Gestion", domain: "Management" },
  { title: "Manager d’entreprise", sector: "Business", domain: "Entrepreneuriat" },
  { title: "Responsable événementiel", sector: "Événementiel", domain: "Organisation" },
  { title: "Entrepreneur", sector: "Business", domain: "Création d'entreprise" },
  { title: "Agent immobilier", sector: "Immobilier", domain: "Vente" },
  { title: "Administrateur réseau", sector: "Informatique", domain: "Systèmes et réseaux" },

  # Profil E - Social(e)
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

users = User.all
job = Job.find(25)

User.all.each do |user|
  Career.create!(
    user: user,
    job: job,
    progression: "initiale"
  )
end

puts "✅ #{User.count} utilisateurs créés! 🎉"
puts "✅ #{Job.count} fiches métiers créées avec succès ! 🥳"
puts "✅ #{Career.count} carrières créées ! 💼"
