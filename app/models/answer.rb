class Answer
  include Mongoid::Document
  field :answer_text, type: String
  field :correct, type: Mongoid::Boolean

  belongs_to :question
end
