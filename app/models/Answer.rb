class Answer
  include Mongoid::Document
  field :answer_text, type: String
  field :correct, type: Boolean, default: ->{ false }
  
  # Relations
  belongs_to :question
end