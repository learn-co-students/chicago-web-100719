class ResponsesController < ApplicationController

  before_action :define_question, :define_response

  def new
    @number_correct = session[:num_correct].to_i
    @last_answer = flash[:last_answer]
  end

  def define_question
    @question = Question.order("RANDOM()").limit(1)[0]
  end

  def define_response
    @questionResponse = Response.new({ question: @question })
  end

  def create
    session[:num_correct] ||= 0

    p "&&&&&&&&&&&&&?????????????????? num correct from session: "
    p session[:num_correct]

    response = Response.create(response_params)
    if response.question.correct_answer == response.answer

      session[:num_correct] = session[:num_correct] + 1

      puts "*********************************"
      puts "Correct"
      puts "*********************************"
      flash[:last_answer] = "CORRECT"
    else
      puts "*********************************"
      puts "Incorrect"
      puts "*********************************"
      # p @number_correct
      flash[:last_answer] = "INCORRECT"
    end
    redirect_to '/random-question'
  end

  def response_params
    params.require(:response).permit(:answer_id, :question_id)
  end

end
