class Question
  include Mongoid::Document
  field :question_text, type: String
  field :hint, type: String

  has_many :answers

  accepts_nested_attributes_for :answers
end
