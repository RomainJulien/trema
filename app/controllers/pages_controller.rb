class PagesController < ApplicationController
  def dashboard
    @career = current_user.career
    @psy_profile = current_user.psy_profile
    @job_psy = [
      { title: "Ébéniste", image_url: "ebeniste.png" },
      { title: "Cuisinier", image_url: "cuisinier.png" },
      { title: "Mécanicien", image_url: "mecanicien.png" },
      { title: "Technicien", image_url: "technicien.png" }
    ]

    @profile = { name: "Explorateur(trice)", description: "Habilité technique, pragmatisme et précision..." }
  end

  def loading
    render layout: false
  end

  def home
  end


end
