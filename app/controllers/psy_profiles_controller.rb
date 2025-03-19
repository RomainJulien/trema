class PsyProfilesController < ApplicationController
  def show
    @psy_profile = PsyProfile.find_by(id: params[:id])
    if @psy_profile.nil?
      redirect_to root_path, alert: "Profil introuvable"
    end
  end
end
