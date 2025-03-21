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
      { title: "Mécanicien automobile", description: "Un métier passionnant pour les amateurs de mécanique.", image_url: "mecanicien.png" },
      { title: "Chef de chantier", description: "Gérez et supervisez des projets de construction.", image_url: "chef_chantier.png" },
      { title: "Ébéniste", description: "Créez des meubles uniques avec passion.", image_url: "ebeniste.png" },
      { title: "Cuisinier", description: "Exprimez votre créativité à travers la gastronomie.", image_url: "cuisinier.png" },
      { title: "Technicien en maintenance industrielle", description: "Un rôle clé pour assurer le bon fonctionnement des machines.", image_url: "technicien.png" }
    ]
  end
end
