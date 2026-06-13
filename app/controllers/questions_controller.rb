class QuestionsController < ApplicationController
  def check_answer
    @question = Question.find(params[:id])

    @selected_answer = params[:answer]
    @correct = @selected_answer == @question.correct_option

    respond_to do |format|
      format.turbo_stream
      format.html { render :check_answer }
    end
  end
end