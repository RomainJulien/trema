class PsyProfilesController < ApplicationController

  def start
    #@psy_profile = PsyProfile.find(params[:id])
    @psy_profile = current_user.psy_profile

    if @psy_profile.nil?
      redirect_to root_path, alert: "Aucun profil trouvé. Faites le quiz."
    end
  end

  def show
    @psy_profile = PsyProfile.find(params[:id])
    @job_psy = [
      { title: "Mécanicien automobile", description: "Le métier de mécanicien automobile consiste à diagnostiquer, réparer et entretenir divers véhicules. Il nécessite une maîtrise des technologies modernes et des compétences en mécanique, électricité et électronique. C’est un métier dynamique et essentiel, garantissant la sécurité et le bon fonctionnement des véhicules.", image_url: "mecanicien.png" },
      { title: "Chef de chantier", description: "Le chef de chantier supervise la réalisation des travaux de construction, en veillant au respect des délais et des normes de sécurité. Il coordonne les équipes, gère les ressources et résout les problèmes techniques sur le terrain. Un rôle clé pour assurer la qualité et la sécurité des projets de construction.", image_url: "chef_chantier.png" },
      { title: "Ebéniste", description: "L’ébéniste crée des meubles et objets en bois, en alliant tradition et techniques modernes. Il travaille avec précision pour réaliser des pièces uniques, sur mesure, qui allient esthétisme et fonctionnalité. Un métier qui demande un grand savoir-faire et une passion pour le travail du bois.", image_url: "ébéniste.jpg" },
      { title: "Cuisinier(e)", description: "Le cuisinier prépare des plats savoureux en utilisant des ingrédients frais et de qualité. Il maîtrise les techniques culinaires pour créer des menus variés, en respectant les recettes et en innovant. Un métier exigeant qui allie créativité, précision et organisation en cuisine.", image_url: "cuisinier.png" },
      { title: "Technicien en maintenance industrielle", description: "Le technicien en maintenance industrielle assure le bon fonctionnement des machines et équipements en usine. Il effectue des diagnostics, des réparations et des contrôles réguliers pour éviter les pannes. Un métier clé qui garantit la performance et la sécurité des installations industrielles.", image_url: "technicien.png" }
    ]
  end
end
