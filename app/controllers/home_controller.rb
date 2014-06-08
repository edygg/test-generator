class HomeController < ApplicationController
  def index
  end

  def exam
  	all_questions = Question.all
    if all_questions.length < 3
      @questions = all_questions
    else
      @questions = all_questions.shuffle![1..3]
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
