class ApplicationController < ActionController::Base
  #before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    # Pour le sign up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, answers: [:question_number, :answer_number]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, answers: [:question_number, :answer_number]])
  end
end
