class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    return if @question.nil?

    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
