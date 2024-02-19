class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if params[:answer] == 'I am going to work'
      @final_answer = 'Great!'
    elsif params[:answer].ends_with?('?')
      @final_answer = 'Silly question, get dressed and go to work!'
    else
      @final_answer = "I don't care, get dressed and go to work!"
    end
  end
end
