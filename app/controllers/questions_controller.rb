class QuestionsController < ApplicationController
  def check_answer
    @question = Question.find(params[:id])

    @selected_answer = params[:answer]
    @correct = @selected_answer == @question.correct_option

    render :check_answer
  end
end