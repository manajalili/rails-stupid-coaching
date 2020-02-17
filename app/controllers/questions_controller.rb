class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @ask = params[:question]
    if @ask.include? '?'
      @answer = 'Silly question,go back to work'
    elsif @ask == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
