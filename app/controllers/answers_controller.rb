class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    # Construit la réponse associée à l'utilisateur connecté
    @answer = current_user.answers.build(answer_params)
    if @answer.save
      redirect_to some_next_path, notice: "Réponse enregistrée avec succès."
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:question_number, :answer_number)
  end

end
