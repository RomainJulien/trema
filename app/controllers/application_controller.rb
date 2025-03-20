class ApplicationController < ActionController::Base
<<<<<<< HEAD
 # before_action :authenticate_user!
=======
  #before_action :authenticate_user!
>>>>>>> 227179f1c586d9beb11fa068424846590ef73910

  protected

  def configure_permitted_parameters
    # Pour le sign up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, answers: [:question_number, :answer_number]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, answers: [:question_number, :answer_number]])
  end
end
