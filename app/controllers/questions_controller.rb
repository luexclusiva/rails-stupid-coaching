class QuestionsController < ApplicationController

  def coach_answer(your_message)
    frase = "I am going to work"
    if your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    elsif your_message.eql?(frase) || your_message.eql?(frase.upcase)
      "Great"
    else
      "I don't care, get dressed and go to work!"
    end
  end
  
  def ask
  end
  
  def answer
    @user_input = params[:question]
    @answer = coach_answer(@user_input)
  end

end
