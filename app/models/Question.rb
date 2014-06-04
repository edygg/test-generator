class Question
  include Mongoid::Document
  field :question_text, type: String
  field :hint, type: String
  
  # Relations
  has_many :answers
end