class HomeController < ApplicationController
  def index
  end

  def exam
  	all_questions = Question.all
    if all_questions.length < 10
      @questions = all_questions.shuffle!
    else
      @questions = all_questions.shuffle![1..10]
    end
    
  end

  def evaluate
    @answers = Answer.find(answers_params.values)
  end

  private
    def answers_params
      params.require(:answers)
    end
end
