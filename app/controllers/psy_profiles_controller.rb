class PsyProfilesController < ApplicationController

  def start
    @psy_profile = PsyProfile.find(params[:id])
  end

end
