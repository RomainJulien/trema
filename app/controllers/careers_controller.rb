class CareersController < ApplicationController
  def create
    if current_user.career.present?
      redirect_to career_path(current_user.career)
    else
      job = Job.where(psy_profile_id: current_user.psy_profile_id).sample || Job.first

      @career = Career.create!(
        user: current_user,
        job: job,
        progression: "initiale"
      )

      redirect_to career_path(@career)
    end
  end
  def show
  end
end
