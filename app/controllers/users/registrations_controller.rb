# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    @user = User.create(user_params)
    sign_in(@user)
    params[:user][:answers].each do |key, value|
      #JE RECUPERE LE NOMBRE DANS KEY
      question_number = key.gsub("answer_", "")[0].to_i
      #JE RECUPERE LA REPONSE DANS VALUE
      answer_number = value.to_i
      unless question_number.nil? || answer_number.nil?
        #JE CREE UNE REPONSE AVEC LE NOMBRE ET LA REPONSE
        answer = Answer.new(question_number: question_number, answer_number: answer_number)
        #JE L'ASSOCIE A L'UTILISATEUR
        answer.user = @user
        #JE SAUVEGARDE
        answer.save
      end
    end
    @user.update_profile_psy
    redirect_to start_psy_profile_path(@user.psy_profile_id)
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, answers: []])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :password, :password_confirmation)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
